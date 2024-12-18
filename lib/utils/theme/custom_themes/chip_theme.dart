import 'package:flexishop/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class YChipTheme {
  YChipTheme._();

  // L I G H T   C H I P   T H E M E
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: YColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: YColors.black),
    selectedColor: YColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: YColors.white,
  );

  // D A R K   C H I P   T H E M E
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: YColors.darkerGrey,
    labelStyle: TextStyle(color: YColors.white),
    selectedColor: YColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: YColors.white,
  );
}