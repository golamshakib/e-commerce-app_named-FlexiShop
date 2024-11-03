import 'package:flexishop/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class YBottomSheetTheme {
  YBottomSheetTheme._();

  // L I G H T   B O T T O M   S H E E T   T H E M E
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: YColors.light,
    modalBackgroundColor: YColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );

  // D A R K   B O T T O M   S H E E T   T H E M E
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: YColors.dark,
    modalBackgroundColor: YColors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );

}
