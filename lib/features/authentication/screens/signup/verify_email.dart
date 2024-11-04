import 'package:flexishop/utils/constants/image_strings.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flexishop/utils/constants/text_strings.dart';
import 'package:flexishop/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class VerifyEmail extends StatelessWidget {
  static const String routeName = '/verify_email';

  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(YSizes.defaultSpace),
          child: Column(
            children: [
              /// Image, title & subtitle
              Image(
                height: YDeviceUtils.screenHeight(context) * 0.3,
                width: YDeviceUtils.screenWidth(context) * 0.8,
                image: const AssetImage(YImages.verifyEmailIllustration),
              ),
              SizedBox(height: YSizes.spaceBtwSections),
              Text(
                YTexts.confirmEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: YSizes.md),
              Text(
                'golamshakib@gmail.com',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: YSizes.md),
              Text(
                YTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: YSizes.spaceBtwSections),

              /// Continue
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(YTexts.continueButton),
                ),
              ),
              SizedBox(height: YSizes.spaceBtwSections / 2),

              /// Resend email
              TextButton(
                onPressed: () {},
                child: const Text(YTexts.resendEmail),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
