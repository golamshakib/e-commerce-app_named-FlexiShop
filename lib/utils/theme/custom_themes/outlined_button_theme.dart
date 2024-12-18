import 'package:flexishop/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class YOutlinedButtonTheme {
  YOutlinedButtonTheme._();

  // L I G H T   O U T L I N E D   B U T T O N   T H E M E
  static OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: YColors.black,
      side: BorderSide(color: YColors.borderPrimary.withOpacity(0.5)),
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      textStyle: const TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: YColors.dark),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
    ),
  );

  // L I G H T   O U T L I N E D   B U T T O N   T H E M E
  static OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: YColors.white,
      side: const BorderSide(color: YColors.borderSecondary),
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      textStyle: const TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: YColors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
    ),
  );
}
