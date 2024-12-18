import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/custom_appbar.dart';
import '../../../../../common/widgets/products/product_cards/product_cart_counter_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class YHomeAppBar extends StatelessWidget {
  const YHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return YCustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(YTexts.appBarTile,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: YColors.grey)),
          Text(YTexts.appbarSubTitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: YColors.textWhite)),
        ],
      ),
      actions: [
        YCartCounterIcon(
            iconColor: YColors.white, onPressed: () {}),
      ],
    );
  }
}
