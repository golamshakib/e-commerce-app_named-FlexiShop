import 'package:flexishop/features/authentication/screens/signup/verify_email_screen.dart';
import 'package:flexishop/utils/constants/colors.dart';
import 'package:flexishop/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: YSizes.spaceBtwSections),
        child: Column(
          children: [
            /// First name & Last name
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: YTexts.firstName,
                    ),
                  ),
                ),
                SizedBox(width: YSizes.spaceBtwInputFields),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: YTexts.lastName,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: YSizes.spaceBtwInputFields),

            /// Username
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                labelText: YTexts.username,
              ),
            ),
            SizedBox(height: YSizes.spaceBtwInputFields),

            /// Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct),
                labelText: YTexts.email,
              ),
            ),
            SizedBox(height: YSizes.spaceBtwInputFields),

            /// Phone number
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.call),
                labelText: YTexts.phoneNo,
              ),
            ),
            SizedBox(height: YSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: YTexts.password,
              ),
            ),
            SizedBox(height: YSizes.spaceBtwSections),

            /// Terms & Condition Checkbox
            Row(
              children: [
                SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(width: YSizes.spaceBtwItems),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${YTexts.isAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: '${YTexts.privacyPolicy} ',
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? YColors.white : YColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark ? YColors.white : YColors.primary,
                        ),
                      ),
                      TextSpan(
                        text: '${YTexts.and} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: YTexts.termsOfUse,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? YColors.white : YColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark ? YColors.white : YColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: YSizes.spaceBtwSections),

            /// Create account Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, VerifyEmailScreen.routeName);
                },
                child: const Text(YTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
