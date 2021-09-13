part of 'pin_code_cubit.dart';

@freezed
abstract class PinCodeState with _$PinCodeState {
  const factory PinCodeState.initial({
    @Default(true) bool isLoading,
    @Default(false) bool hasPinCode,
    @Default(false) bool isSuccess,
    @Default(false) bool isBiometricSupport,
    bool? useBiometric,
    String? temporaryCode,
    String? error,
  }) = _Initial;

  const PinCodeState._() : super();

  bool get hasTemporaryCode =>
      temporaryCode != null && temporaryCode!.isNotEmpty;

  bool get hasError => error != null && error!.isNotEmpty;
}
