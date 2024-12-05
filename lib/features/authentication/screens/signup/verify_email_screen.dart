import 'package:flexishop/features/authentication/screens/signup/success_email_screen.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/success_verify_reset/verify_or_reset_email_screen_item.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  static const String routeName = '/verify_email';

  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(YSizes.defaultSpace),
          child: VerifyEmailOrResetEmailScreenItem(
            image: YImages.verifyEmailIllustration,
            title: YTexts.verifyEmailTitle,
            subTitle: YTexts.verifyEmailTitle,
            elevatedButtonText: YTexts.tContinue,
            elevatedButtonOnPressed: () =>
                Navigator.pushReplacementNamed(context, SuccessEmailScreen.routeName),
            outlinedButtonText: YTexts.resendEmail,
            outlinedButtonOnPressed: () {},
          ),
        ),
      ),
    );
  }
}
