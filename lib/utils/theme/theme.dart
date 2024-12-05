import 'package:flexishop/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';


class YAppTheme {
  YAppTheme._();

  // L I G H T   T H E M E
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: YColors.white,
    textTheme: YTextTheme.lightTextTheme,
    chipTheme: YChipTheme.lightChipTheme,
    appBarTheme: YAppBarTheme.lightAppBarTheme,
    checkboxTheme: YCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: YBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: YElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: YOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: YTextFormFieldTheme.lightInputDecorationTheme,
  );

  // D A R K   T H E M E
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: YColors.dark,
    textTheme: YTextTheme.darkTextTheme,
    chipTheme: YChipTheme.darkChipTheme,
    appBarTheme: YAppBarTheme.darkAppBarTheme,
    checkboxTheme: YCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: YBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: YElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: YOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: YTextFormFieldTheme.darkInputDecorationTheme,
  );
}