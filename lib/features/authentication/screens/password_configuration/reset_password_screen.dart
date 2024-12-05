import 'package:flexishop/common/widgets/success_verify_reset/verify_or_reset_email_screen_item.dart';
import 'package:flexishop/features/authentication/screens/login/login_screen.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class PasswordResetScreen extends StatelessWidget {
  static const String routeName = '/reset_password';

  const PasswordResetScreen({super.key});

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
            title: YTexts.resetYourPasswordTitle,
            subTitle: YTexts.resetYourPasswordSubTitle,
            elevatedButtonText: YTexts.done,
            elevatedButtonOnPressed: () => Navigator.pushReplacementNamed(context, LoginScreen.routeName),
            outlinedButtonText: YTexts.resendEmail,
            outlinedButtonOnPressed: () {},
          ),
        ),
      ),
    );
  }
}
