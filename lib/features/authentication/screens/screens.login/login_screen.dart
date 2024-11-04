import 'package:flexishop/common/styles/spacing_styles.dart';
import 'package:flexishop/common/widgets/form_divider.dart';
import 'package:flexishop/common/widgets/social_buttons.dart';
import 'package:flexishop/features/authentication/screens/screens.login/widgets/login_form.dart';
import 'package:flexishop/features/authentication/screens/screens.login/widgets/login_header.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flexishop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: YSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, title & subTitle
              const LoginHeader(),
              SizedBox(height: YSizes.spaceBtwSections),

              /// Form
              const LoginForm(),
              SizedBox(height: YSizes.spaceBtwSections),

              /// Divider
              const FormDivider(dividerText: YTexts.orSignInWith),
              SizedBox(height: YSizes.spaceBtwSections),

              /// Footer
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}