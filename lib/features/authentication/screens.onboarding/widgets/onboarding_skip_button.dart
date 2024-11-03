import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: YDeviceUtils.appBarHeight(),
      right: YSizes.defaultSpace,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Skip',
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}