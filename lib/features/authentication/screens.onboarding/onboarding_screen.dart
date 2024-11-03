import 'package:flexishop/features/authentication/screens.onboarding/widgets/onboarding_page_view.dart';
import 'package:flexishop/features/authentication/screens.onboarding/widgets/onboarding_skip_button.dart';
import 'package:flexishop/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/text_strings.dart';
import 'widgets/onboarding_dot_navigation.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = '/onboarding';

  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            children: const [
              OnboardingPageView(
                  image: YImages.onboardingImage1,
                  title: YTexts.onBoardingTitle1,
                  subTitle: YTexts.onBoardingSubTitle1),
              OnboardingPageView(
                  image: YImages.onboardingImage2,
                  title: YTexts.onBoardingTitle2,
                  subTitle: YTexts.onBoardingSubTitle2),
              OnboardingPageView(
                  image: YImages.onboardingImage3,
                  title: YTexts.onBoardingTitle3,
                  subTitle: YTexts.onBoardingSubTitle3),
            ],
          ),
          /// Onboarding Navigation Button
          const OnboardingDotNavigation(),
          /// Skip Button
          const OnboardingSkipButton(),
          /// Next Button

        ],
      ),
    );
  }
}

