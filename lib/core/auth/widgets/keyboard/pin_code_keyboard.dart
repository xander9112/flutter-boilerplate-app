import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'keyboard.dart';

class PinCodeKeyboard extends StatelessWidget {
  const PinCodeKeyboard({
    Key? key,
    this.onPressedNumber,
    this.onReset,
    this.onDelete,
    this.onBiometricPressed,
  }) : super(key: key);

  final Function(String text)? onPressedNumber;
  final VoidCallback? onReset;
  final VoidCallback? onDelete;
  final VoidCallback? onBiometricPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32.0, 0, 32.0, 32.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              KeyItem(
                onPressedNumber: () => onPressedNumber!('1'),
                child: const KeyItemNumber(text: '1'),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber!('2'),
                child: const KeyItemNumber(text: '2'),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber!('3'),
                child: const KeyItemNumber(text: '3'),
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              KeyItem(
                onPressedNumber: () => onPressedNumber!('4'),
                child: const KeyItemNumber(text: '4'),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber!('5'),
                child: const KeyItemNumber(text: '5'),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber!('6'),
                child: const KeyItemNumber(text: '6'),
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              KeyItem(
                onPressedNumber: () => onPressedNumber!('7'),
                child: const KeyItemNumber(
                  text: '7',
                ),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber!('8'),
                child: const KeyItemNumber(
                  text: '8',
                ),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber!('9'),
                child: const KeyItemNumber(
                  text: '9',
                ),
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              KeyItem(
                onPressedNumber: () => onReset!(),
                child: Text(
                  tr('auth.pinCode.reset'),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 10.0),
                ),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber!('0'),
                child: const KeyItemNumber(text: '0'),
              ),
              KeyItem(
                onPressedNumber: () => onDelete!(),
                child: const Icon(Icons.backspace),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
