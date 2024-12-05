import 'package:flexishop/common/widgets/appbar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class YProductImageSlider extends StatelessWidget {
  const YProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return YCurvedEdgesWidget(
      child: Container(
        color: dark ? YColors.darkerGrey : YColors.light,
        child: Stack(
          children: [
            /// -- Main Large Image
            const SizedBox(
                height: 400.0,
                child: Center(
                  child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(YImages.product6)),
                )),

            /// -- Image Slider
            Positioned(
              right: 0.0,
              bottom: 30.0,
              left: YSizes.defaultSpace,
              child: SizedBox(
                height: 80.0,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                  const SizedBox(width: YSizes.spaceBtwItems),
                  itemBuilder: (_, index) => YRoundedImage(
                      containerWidth: 80.0,
                      border: Border.all(color: YColors.primary),
                      backgroundColor:
                      dark ? YColors.dark : YColors.white,
                      imageUrl: YImages.product6),
                ),
              ),
            ),
            YCustomAppbar(
              showBackArrow: true,

              actions: [
                YCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                    onPressed: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
