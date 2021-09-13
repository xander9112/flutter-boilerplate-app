import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boilerplate_app/utils/utils.dart';
import 'package:reactive_forms/reactive_forms.dart';

class UiTextField<T> extends StatelessWidget {
  const UiTextField({
    required this.formControl,
    Key? key,
    this.margin,
    this.labelText,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.focusNode,
    this.onSubmitted,
    this.textCapitalization = TextCapitalization.none,
    this.hasError = false,
    this.readOnly = false,
    this.inputFormatters,
    this.onTap,
    this.maxLines = 1,
    this.prefixIcon,
    this.onChanged,
  }) : super(key: key);

  final EdgeInsetsGeometry? margin;
  final FormControl<T> formControl;
  final String? labelText;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final VoidCallback? onSubmitted;
  final TextCapitalization textCapitalization;
  final bool? hasError;
  final bool? readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final GestureTapCallback? onTap;
  final int? maxLines;
  final Widget? prefixIcon;
  final Function(T? value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(bottom: 16.0),
      child: ReactiveTextField<T>(
        maxLines: maxLines,
        onTap: onTap,
        inputFormatters: inputFormatters,
        onSubmitted: onSubmitted,
        focusNode: focusNode,
        keyboardType: keyboardType,
        obscureText: obscureText,
        formControl: formControl,
        readOnly: readOnly ?? false,
        validationMessages: ReactiveErrors.validationMessages,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: labelText ?? hintText, // hasError ? labelText : hintText,
        ),
        textCapitalization: textCapitalization,
      ),
    );
  }
}
