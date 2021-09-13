import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate_app/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../bloc.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());

  SecureStorageService get secureStorageService =>
      GetIt.I<SecureStorageService>();

  void init([bool? hasToken]) {
    if (hasToken ?? false) {
      emit(const AuthState.unVerified());
    } else {
      emit(const AuthState.unAuth());
    }
  }

  Future<void> login(Map<String, Object?> data) async {
    emit(const AuthState.unVerified());
  }

  Future<void> verify() async {
    secureStorageService.setToken('123');

    emit(const AuthState.verified());
  }

  Future<void> logout() async {
    await secureStorageService.removeToken();
    await secureStorageService.removePinCode();

    GetIt.I<SharedPreferences>().remove('useBiometric');

    GetIt.I<PinCodeCubit>().init();

    emit(const AuthState.logout());
    emit(const AuthState.unAuth());
  }
}
