import 'package:flexishop/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class YElevatedButtonTheme {
  YElevatedButtonTheme._();

  // L I G H T   E L E V A T E D   B U T T O N   T H E M E
  static ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: YColors.white,
      backgroundColor: YColors.buttonPrimary,
      disabledForegroundColor: YColors.grey,
      disabledBackgroundColor: YColors.darkGrey,
      side: const BorderSide(color: YColors.buttonPrimary),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: YColors.dark),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    ),
  );

  // D A R K   E L E V A T E D   B U T T O N   T H E M E
  static ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: YColors.white,
      backgroundColor: YColors.buttonPrimary,
      disabledForegroundColor: YColors.grey,
      disabledBackgroundColor: YColors.darkGrey,
      side: const BorderSide(color: YColors.buttonPrimary),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: YColors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    ),
  );
}
