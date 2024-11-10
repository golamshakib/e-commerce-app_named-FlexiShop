import 'package:carousel_slider/carousel_slider.dart';
import 'package:flexishop/features/shop/providers/home/home_provider.dart';
import 'package:flexishop/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../common/widgets/custom_shape/container/rounded_container.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class YPromoSlider extends StatelessWidget {
  const YPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final provider = context.read<HomeProvider>();
    return Column(

      /// Banner
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => provider.updatePageIndex(index),
          ),
          items: banners.map((url) => YRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: YSizes.spaceBtwItems),

        ///  Slider Indicator
        Consumer<HomeProvider>(
          builder: (context, provider, _) =>  Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                YRoundedContainer(
                  height: 4.0,
                  width: 20.0,
                  margin: const EdgeInsets.only(right: YSizes.sm),
                  backgroundColor: provider.carouselCurrentIndex == i ? YColors.primary : YColors.grey,
                )
            ],
          ),
        )
      ],
    );
  }
}
