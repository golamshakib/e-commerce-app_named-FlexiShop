import 'package:flexishop/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class YAppBarTheme {
  YAppBarTheme._();

  // L I G H T   A P P   B A R   T H E M E
  static AppBarTheme lightAppBarTheme = const AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: YColors.black, size: 24.0),
    actionsIconTheme: IconThemeData(color: YColors.black, size: 24.0),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: YColors.textPrimary),
  );

  // D A R K   A P P   B A R   T H E M E
  static AppBarTheme darkAppBarTheme = const AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: YColors.white, size: 24.0),
    actionsIconTheme: IconThemeData(color: YColors.white, size: 24.0),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: YColors.textWhite),
  );
}