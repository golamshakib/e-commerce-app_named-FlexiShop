import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class YVerticalImageText extends StatelessWidget {
  const YVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor= YColors.white,
    this.backgroundColor = YColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: YSizes.spaceBtwItems),
        child: Column(
          children: [

            /// Circular Icon
            Container(
              height: 56,
              width: 56,
              padding: EdgeInsets.all(YSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? YColors.black : YColors.white),
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Center(
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    color: YColors.dark,
                  )),
            ),
            SizedBox(height: YSizes.spaceBtwItems / 2),

            /// Text
            SizedBox(
                width: 50.0,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
          ],
        ),
      ),
    );
  }
}
