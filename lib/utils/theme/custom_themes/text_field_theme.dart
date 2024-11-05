import 'package:flexishop/utils/constants/colors.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class YTextFormFieldTheme {
  YTextFormFieldTheme._();

  // L I G H T   F O R M   F I E L D   T H E M E
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: YColors.darkGrey,
    suffixIconColor: YColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: YSizes.fontSizeMd, color: YColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: YSizes.fontSizeSm, color: YColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: YColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(YSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.0, color: YColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(YSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.0, color: YColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(YSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.0, color: YColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(YSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.0, color: YColors.warning),
    ),
    focusedErrorBorder: const  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(YSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2.0, color: YColors.warning),
    ),
  );

  // D A R K   F O R M   F I E L D   T H E M E
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: YColors.darkGrey,
    suffixIconColor: YColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: YSizes.fontSizeMd, color: YColors.white),
    hintStyle: const TextStyle().copyWith(fontSize:YSizes.fontSizeSm, color: YColors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: YColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(YSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.0, color: YColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(YSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.0, color: YColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(YSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.0, color: YColors.light),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(YSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.0, color: YColors.warning),
    ),
    focusedErrorBorder: const  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(YSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2.0, color: YColors.warning),
    ),
  );
}