import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../providers/onboarding/onboarding_provider.dart';
import '../../login/login_screen.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    final provider = context.read<OnboardingProvider>();
    return Positioned(
      bottom: YDeviceUtils.bottomNavigationBarHeight() + 5,
      right: YSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: (){
          if (provider.currentPageIndex == 2) {
            Navigator.pushReplacementNamed(context, LoginScreen.routeName);
          } else {
            provider.nextButton();
          }
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          side: BorderSide(color: dark ? YColors.primary : YColors.black),
          backgroundColor: dark ? YColors.primary : YColors.black,

        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
