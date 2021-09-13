import 'package:flutter/material.dart';

import 'pin_code_points.dart';
import 'pin_code_title.dart';

class PinCodeHeader extends StatelessWidget {
  const PinCodeHeader({
    required this.hasPinCode,
    required this.hasTemporaryCode,
    required this.hasError,
    required this.pinCodeLength,
    required this.pinFilledCodeLength,
    required this.isLoading,
    this.error,
    Key? key,
  }) : super(key: key);

  final int pinCodeLength;
  final int pinFilledCodeLength;

  final bool hasPinCode;
  final bool hasTemporaryCode;
  final bool hasError;
  final bool isLoading;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Center(
        child: Column(
          children: <Widget>[
            PinCodeTitle(
              hasPinCode: hasPinCode,
              hasTemporaryCode: hasTemporaryCode,
            ),
            const SizedBox(height: 16.0),
            PinCodePoints(
              hasError: hasError,
              pinCodeLength: pinCodeLength,
              pinFilledCodeLength: pinFilledCodeLength,
              isLoading: isLoading,
            ),
            const SizedBox(height: 32.0),
            if (hasError)
              Text(
                error!,
                style: const TextStyle(color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}
