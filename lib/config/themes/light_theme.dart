import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_app/utils/utils.dart';

import 'text_styles.dart';
import 'theme_config.dart';

ThemeData themeLight = ThemeData(
  primaryColor: ThemeConfig.primary,
  primarySwatch: createMaterialColor(ThemeConfig.primary),
  errorColor: ThemeConfig.error,
  scaffoldBackgroundColor: ThemeConfig.white,
  backgroundColor: ThemeConfig.white,
  textTheme: TextTheme(
    subtitle1: TextStyles.formTextNormal.copyWith(fontWeight: FontWeight.bold),
    button: TextStyles.buttonText.copyWith(color: ThemeConfig.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: ThemeConfig.light),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: ThemeConfig.primary),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: ThemeConfig.light),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: ThemeConfig.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: ThemeConfig.error),
    ),
    errorStyle: TextStyles.bodyTextNormalBold.copyWith(
      color: ThemeConfig.error,
    ),
    hintStyle: TextStyles.formTextNormal,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: ThemeConfig.primary,
      padding: EdgeInsets.zero,
      elevation: 30,
      minimumSize: const Size.fromHeight(58.0),
      shadowColor: ThemeConfig.primary.withOpacity(0.24),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    ),
  ),
);
