import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_boilerplate_app/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'pin_code_cubit.freezed.dart';
part 'pin_code_state.dart';

@singleton
class PinCodeCubit extends Cubit<PinCodeState> {
  PinCodeCubit(this.preferences, this.secureStorageService)
      : super(const PinCodeState.initial());

  final LocalAuthentication auth = LocalAuthentication();
  late SecureStorageService secureStorageService;
  late SharedPreferences preferences;

  Future<void> init() async {
    final bool hasPinCode = await secureStorageService.hasPinCode;
    final bool? useBiometric = preferences.getBool('useBiometric');
    late bool isBiometricSupport;

    try {
      isBiometricSupport = await auth.isDeviceSupported();
    } catch (_) {
      isBiometricSupport = false;
    }

    if (hasPinCode) {
      // yield* mapEventToStateInitBiometric();
    }

    emit(
      state.copyWith(
        hasPinCode: hasPinCode,
        isLoading: false,
        isBiometricSupport: isBiometricSupport,
        useBiometric: useBiometric,
      ),
    );
  }

  void setTemporaryCode({
    required String temporaryCode,
  }) {
    emit(state.copyWith(temporaryCode: temporaryCode));
  }

  Future<void> compareCode({required String code}) async {
    bool isCompare = false;
    String? error;

    emit(state.copyWith(isLoading: true));

    if (state.hasPinCode) {
      isCompare = await secureStorageService.comparePinCode(code);

      if (!isCompare) {
        error = tr('auth.pinCode.errors.wrongCode');
      }
    } else {
      isCompare = state.temporaryCode == code;

      if (!isCompare) {
        error = tr('auth.pinCode.errors.codesDoNotMatch');
      } else {
        await secureStorageService.setPinCode(code);
      }
    }

    emit(state.copyWith(isSuccess: isCompare, error: error, isLoading: false));

    // Выкидывать из профиля при n неудачных попыток

    if (!isCompare) {
      await Future<dynamic>.delayed(const Duration(seconds: 2));

      emit(state.copyWith(error: null, temporaryCode: null));
    }
  }

  void verifyByBiometric() {
    emit(state.copyWith(isSuccess: true));
  }

  Future<void> reset() {
    return secureStorageService.removePinCode();
  }

  Future<void> setUseBiometric({required bool useBiometric}) async {
    await preferences.setBool('useBiometric', useBiometric);

    emit(state.copyWith(useBiometric: useBiometric));
  }
}
