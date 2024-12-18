import 'package:flutter/material.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  static const String routeName = '/signup';

  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(YSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              Padding(
                padding: const EdgeInsets.only(top: YSizes.spaceBtwSections / 2),
                child: Text(
                  YTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),

              /// Form
              const SignupForm(),

              /// Divider
              const FormDivider(dividerText: YTexts.orSignUpWith),
              const SizedBox(height: YSizes.spaceBtwSections),

              /// Social Button
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
