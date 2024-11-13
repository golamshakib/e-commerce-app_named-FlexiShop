import 'package:flexishop/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class YTabBar extends StatelessWidget implements PreferredSizeWidget {
  const YTabBar({super.key, required this.tabs});

 final List <Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return Material(
      color: dark ? YColors.black : YColors.white,
      child: TabBar(
          isScrollable: true,
          indicatorColor: YColors.primary,
          unselectedLabelColor: YColors.darkGrey,
          labelColor: dark ? YColors.white : YColors.primary,
          tabs: tabs,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(YDeviceUtils.appBarHeight()) ;
}
