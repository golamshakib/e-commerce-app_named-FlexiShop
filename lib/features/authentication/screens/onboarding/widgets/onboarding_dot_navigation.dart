import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../providers/onboarding/onboarding_provider.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<OnboardingProvider>();
    final dark = YDeviceUtils.isDarkMode(context);
    return Positioned(
      bottom: YDeviceUtils.bottomNavigationBarHeight() + 25,
      left: YSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: provider.pageController,
        onDotClicked: provider.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 6.0,
          dotWidth: 10.0,
          activeDotColor: dark ? YColors.light : YColors.dark,
          dotColor: Colors.grey,
        ),
      ),
    );
  }
}
