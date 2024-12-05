import 'package:flutter/material.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: YSpacingStyle.paddingWithAppBarHeight,
          child: const Column(
            children: [
              /// Logo, title & subTitle
              Padding(
                padding: EdgeInsets.only(top: YSizes.spaceBtwSections * 2),
                child: LoginHeader(),
              ),

              /// Form
              LoginForm(),

              /// Divider
              FormDivider(dividerText: YTexts.orSignInWith),
              SizedBox(height: YSizes.spaceBtwSections),

              /// Footer
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}