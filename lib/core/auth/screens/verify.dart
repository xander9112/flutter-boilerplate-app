import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate_app/core/core.dart';
import 'package:flutter_boilerplate_app/utils/utils.dart';
import 'package:flutter_boilerplate_app/widgets/widgets.dart';
import 'package:get_it/get_it.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  String _pinCode = '';
  final int _pinCodeLength = 4;

  final DialogService _dialogService = GetIt.I<DialogService>();

  final PinCodeCubit _pinCodeBloc = GetIt.I<PinCodeCubit>();

  void _onPressedNumber(String text) {
    final PinCodeState state = GetIt.I<PinCodeCubit>().state;

    if (state.hasError) {
      return;
    }

    if (text.isNotEmpty) {
      if (_pinCode.length < _pinCodeLength) {
        setState(() {
          _pinCode += text;
        });
      }

      if (_pinCode.length == _pinCodeLength) {
        if (!state.hasPinCode && !state.hasTemporaryCode) {
          _pinCodeBloc.setTemporaryCode(temporaryCode: _pinCode);
        } else {
          _pinCodeBloc.compareCode(code: _pinCode);
        }

        setState(() {
          _pinCode = '';
        });
      }
    }
  }

  void _onDelete() {
    if (_pinCode.isNotEmpty) {
      setState(() {
        _pinCode = _pinCode.substring(0, _pinCode.length - 1);
      });
    }
  }

  Future<void> _onReset() async {
    if (_pinCode.isEmpty) {
      final bool? isConfirm = await _dialogService.showDialog(
        dialogType: DialogTypes.confirmDialog,
        title: tr('auth.pinCode.dialogs.confirmReset.title'),
        body: tr('auth.pinCode.dialogs.confirmReset.content'),
      );

      if (isConfirm != null && isConfirm) {
        _pinCodeBloc.reset();
        GetIt.I<AuthCubit>().logout();
      }
    } else {
      setState(() {
        _pinCode = '';
      });
    }
  }

  void _onBiometricPressed() {} // TODO: Сделать вызов биометрии

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<PinCodeCubit, PinCodeState>(
          bloc: _pinCodeBloc..init(),
          listenWhen: (PinCodeState previous, PinCodeState current) =>
              current.isSuccess,
          listener: (BuildContext context, PinCodeState state) async {
            if (state.isBiometricSupport && state.useBiometric == null) {
              // final bool? isConfirm = await _dialogService.showDialog<bool?>(
              //   dialogType: DialogTypes.confirmDialog,
              //   title: tr('auth.pinCode.dialogs.useBiometric.title'),
              //   body: tr('auth.pinCode.dialogs.useBiometric.content'),
              // );

              // _pinCodeBloc.setUseBiometric(useBiometric: isConfirm ?? false);
            }

            GetIt.I<AuthCubit>().verify();
          },
          builder: (BuildContext context, PinCodeState pinCodeState) {
            return ScrollBody(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BlocBuilder<CoreCubit, CoreState>(
                    bloc: GetIt.I<CoreCubit>(),
                    builder: (BuildContext context, CoreState coreState) {
                      return PinCodeHeader(
                        hasPinCode: pinCodeState.hasPinCode,
                        hasTemporaryCode: pinCodeState.hasTemporaryCode,
                        hasError: pinCodeState.hasError,
                        error: pinCodeState.error,
                        pinCodeLength: _pinCodeLength,
                        pinFilledCodeLength: _pinCode.length,
                        isLoading: coreState.maybeMap(
                            // verify: (_) =>
                            //     _.status.isFetchingInProgress,
                            orElse: () => false),
                      );
                    },
                  ),
                  PinCodeKeyboard(
                    onPressedNumber: _onPressedNumber,
                    onDelete: _onDelete,
                    onReset: _onReset,
                    onBiometricPressed: _onBiometricPressed,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
