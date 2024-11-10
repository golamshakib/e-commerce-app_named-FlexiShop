import 'package:flutter/cupertino.dart';

import '../../utils/constants/colors.dart';

class YShadowStyle {

  // V E R T I C A L   P R O D U  C T   S H A D O W
  static final verticalProductShadow = BoxShadow(
    color: YColors.darkGrey.withOpacity(0.1),
    blurRadius: 50.0,
    spreadRadius: 7.0,
    offset: const Offset(0.0, 2.0),
  );

  // H O R I Z O N T A L   P R O D U  C T   S H A D O W
  static final horizontalProductShadow = BoxShadow(
    color: YColors.darkGrey.withOpacity(0.1),
    blurRadius: 50.0,
    spreadRadius: 7.0,
    offset: const Offset(0.0, 2.0),
  );
}