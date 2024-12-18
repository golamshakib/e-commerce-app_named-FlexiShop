import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class YSpacingStyle {

  static EdgeInsetsGeometry paddingWithAppBarHeight = const EdgeInsets.only(
    top: YSizes.appBarHeight,
    bottom: YSizes.defaultSpace,
    left: YSizes.defaultSpace,
    right: YSizes.defaultSpace,
  );
}