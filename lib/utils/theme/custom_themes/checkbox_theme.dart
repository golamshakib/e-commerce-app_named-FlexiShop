import 'package:flexishop/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class YCheckboxTheme {
  YCheckboxTheme._();

  // L I G H T   C H E C K   B O X   T H E M E
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return YColors.white;
      } else {
        return YColors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return YColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );

  // D A R K   C H E C K   B O X   T H E M E
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return YColors.white;
      } else {
        return YColors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return YColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );
}