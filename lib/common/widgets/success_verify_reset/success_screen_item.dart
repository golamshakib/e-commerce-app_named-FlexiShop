import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/device/device_utility.dart';
import '../../styles/spacing_styles.dart';

class SuccessScreenItem extends StatelessWidget {
  const SuccessScreenItem({
    super.key, required this.image, required this.title, required this.subTitle, required this.onPressed,
  });

  final String image, title, subTitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: YSpacingStyle.paddingWithAppBarHeight * 2,
      child: Column(
        children: [
          /// Image
          Image(
            width: YDeviceUtils.screenWidth(context) * 0.6,
            image: AssetImage(image),
          ),
          const SizedBox(height: YSizes.spaceBtwSections),

          /// Title & subtitle
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: YSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: YSizes.spaceBtwSections),
          /// Continue
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPressed,
              child: const Text(YTexts.tContinue),
            ),
          ),
        ],
      ),
    );
  }
}
