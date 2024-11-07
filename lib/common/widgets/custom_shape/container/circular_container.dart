import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class YCircularContainer extends StatelessWidget {
  const YCircularContainer({
    super.key,
    this.child,
    this.width = 400.0,
    this.height = 400.0,
    this.margin,
    this.padding = 0.0,
    this.radius = 400.0,
    this.backgroundColor = YColors.white,
  });

  final double? width;
  final double? height;
  final double padding;
  final EdgeInsets? margin;
  final double radius;
  final Color backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
    );
  }
}
