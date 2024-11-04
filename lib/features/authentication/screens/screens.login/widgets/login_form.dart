import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flexishop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: YSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: YTexts.email,
              ),
            ),
            SizedBox(height: YSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: YTexts.password,
              ),
            ),
            SizedBox(height: YSizes.spaceBtwInputFields / 2),

            /// Remember me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    SizedBox(width: YSizes.sm),
                    const Text(YTexts.rememberMe),
                  ],
                ),
                /// Forget Password
                TextButton(
                  onPressed: () {},
                  child: const Text(YTexts.forgetPassword),
                ),
              ],
            ),
            SizedBox(height: YSizes.spaceBtwSections),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(YTexts.signIn),
              ),
            ),
            SizedBox(height: YSizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(YTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
