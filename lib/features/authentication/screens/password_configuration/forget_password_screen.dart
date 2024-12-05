import 'package:flexishop/features/authentication/screens/password_configuration/reset_password_screen.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flexishop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const String routeName = '/forget_password';

  const ForgetPasswordScreen({super.key});

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
              /// Headings
              Text(YTexts.forgetPassword,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: YSizes.spaceBtwItems),
              Text(YTexts.forgetPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium),

              const SizedBox(height: YSizes.spaceBtwSections * 2),

              /// Text field
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct),
                  labelText: YTexts.email,
                ),
              ),
              const SizedBox(height: YSizes.spaceBtwSections),

              /// Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, PasswordResetScreen.routeName),
                  child: const Text(YTexts.submit),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
