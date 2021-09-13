import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PinCodeTitle extends StatelessWidget {
  const PinCodeTitle({
    required this.hasPinCode,
    required this.hasTemporaryCode,
    Key? key,
  }) : super(key: key);

  final bool hasPinCode;
  final bool hasTemporaryCode;

  @override
  Widget build(BuildContext context) {
    if (hasPinCode) {
      return Text(tr('auth.pinCode.enterPinCode'));
    }

    if (hasTemporaryCode) {
      return Text(tr('auth.pinCode.repeatPinCode'));
    }

    return Text(tr('auth.pinCode.setPinCode'));
  }
}
