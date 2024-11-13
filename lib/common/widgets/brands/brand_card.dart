import 'package:flexishop/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../custom_shape/container/rounded_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_text_with_verification_icon.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class YBrandCard extends StatelessWidget {
  const YBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,

      /// -- Featured Brands Container
      child: YRoundedContainer(
        showBorder: showBorder,
        padding: const EdgeInsets.all(YSizes.sm),
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// -- Icon
            Flexible(
              child: YCircularImage(
                  imageUrl: YImages.shoeIcon1,
                  backgroundColor: Colors.transparent,
              overlayColor: dark ? YColors.white : YColors.black,
              ),

            ),
            const SizedBox(width: YSizes.spaceBtwItems / 2),

            /// [Expanded] & Column [MainAxisSize.min] is important to keep the elements in the vertical center & also to keep text inside the boundaries.
            /// -- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const YBrandTitleTextWithVerificationIcon(
                      title: 'Nike', brandTextSize: TextSizes.large),
                  Text('256 Products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
