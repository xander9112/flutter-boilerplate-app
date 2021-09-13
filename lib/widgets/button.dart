import 'package:flutter/material.dart';

class UiButton extends StatelessWidget {
  const UiButton({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}
