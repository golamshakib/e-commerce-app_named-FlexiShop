import 'package:flexishop/features/authentication/screens/signup/verify_email.dart';
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
                SizedBox(width: YSizes.spaceBtwItems),
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
            SizedBox(height: YSizes.spaceBtwItems),

            /// Username
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                labelText: YTexts.username,
              ),
            ),
            SizedBox(height: YSizes.spaceBtwItems),

            /// Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct),
                labelText: YTexts.email,
              ),
            ),
            SizedBox(height: YSizes.spaceBtwItems),

            /// Phone number
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.call),
                labelText: YTexts.phoneNo,
              ),
            ),
            SizedBox(height: YSizes.spaceBtwItems),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: YTexts.password,
              ),
            ),
            SizedBox(height: YSizes.spaceBtwItems),

            /// Privacy policy & Terms of use
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                const Text(YTexts.isAgreeTo),
                SizedBox(width: YSizes.xs),
                Text(YTexts.privacyPolicy,
                    style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(width: YSizes.xs),
                const Text(YTexts.and),
                SizedBox(width: YSizes.xs),
                Text(YTexts.termsOfUse,
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            SizedBox(height: YSizes.spaceBtwItems),

            /// Create account
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, VerifyEmail.routeName);
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
