import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../providers/onboarding/onboarding_provider.dart';


class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.read<OnboardingProvider>();
    return Positioned(
      top: YDeviceUtils.appBarHeight(),
      right: YSizes.defaultSpace,
      child: TextButton(
        onPressed: provider.skipButton,
        child: Text(
          'Skip',
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}