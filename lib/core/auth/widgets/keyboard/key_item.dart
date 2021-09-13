import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_app/config/config.dart';

class KeyItem extends StatelessWidget {
  const KeyItem({Key? key, this.child, this.onPressedNumber}) : super(key: key);

  final Widget? child;
  final Function()? onPressedNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: ThemeConfig.light),
      ),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(96.0),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(96.0),
          onTap: onPressedNumber?.call,
          child: Center(child: child),
        ),
      ),
    );
  }
}
