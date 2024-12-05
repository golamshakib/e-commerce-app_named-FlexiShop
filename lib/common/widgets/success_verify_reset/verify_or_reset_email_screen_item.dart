import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class VerifyEmailOrResetEmailScreenItem extends StatelessWidget {
  const VerifyEmailOrResetEmailScreenItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.elevatedButtonText,
    required this.outlinedButtonText,
    required this.elevatedButtonOnPressed,
    required this.outlinedButtonOnPressed,
  });

  final String image, title, subTitle, elevatedButtonText, outlinedButtonText;
  final VoidCallback elevatedButtonOnPressed, outlinedButtonOnPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          'golamshakib@gmail.com',
          style: Theme.of(context).textTheme.labelLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: YSizes.spaceBtwItems),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: YSizes.spaceBtwSections),

        /// Continue
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: elevatedButtonOnPressed,
            child: Text(elevatedButtonText),
          ),
        ),
        const SizedBox(height: YSizes.spaceBtwItems),

        /// Resend email
        SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: outlinedButtonOnPressed,
            child: Text(outlinedButtonText),
          ),
        ),
      ],
    );
  }
}
