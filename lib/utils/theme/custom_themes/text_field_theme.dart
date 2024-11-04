import 'package:flexishop/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class YTextFormFieldTheme {
  YTextFormFieldTheme._();

  // L I G H T   F O r M   F I E L D   T H E M E
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: YColors.darkerGrey,
    suffixIconColor: YColors.darkerGrey,
    // constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: 14.0, color: YColors.textPrimary),
    hintStyle: const TextStyle().copyWith(fontSize: 14.0, color: YColors.textPrimary),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal, color: YColors.error),
    floatingLabelStyle: const TextStyle().copyWith(color: YColors.textPrimary.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1.0, color: YColors.borderPrimary),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1.0, color: YColors.borderPrimary),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1.0, color: YColors.borderSecondary),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1.0, color: YColors.error),
    ),
    focusedErrorBorder: const  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 2.0, color: YColors.warning),
    ),
  );

  // D A r K   F O r M   F I E L D   T H E M E
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: YColors.lightGrey,
    suffixIconColor: YColors.lightGrey,
    // constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: 14.0, color: YColors.textWhite),
    hintStyle: const TextStyle().copyWith(fontSize: 14.0, color: YColors.textWhite),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal, color: YColors.error),
    floatingLabelStyle: const TextStyle().copyWith(color: YColors.textWhite.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1.0, color: YColors.borderSecondary),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1.0, color: YColors.borderSecondary),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1.0, color: YColors.lightGrey),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1.0, color: YColors.error),
    ),
    focusedErrorBorder: const  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 2.0, color: YColors.warning),
    ),
  );
}