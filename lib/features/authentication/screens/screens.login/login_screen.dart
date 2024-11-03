import 'package:flexishop/common/styles/spacing_styles.dart';
import 'package:flexishop/utils/constants/image_strings.dart';
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
          padding: YSpacingStyle.spacingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Logo, title, subTitle
              Image.asset(
                width: 150,
                YImages.lightAppLogo,
              ),
              SizedBox(height: YSizes.md),
              Text(
                YTexts.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: YSizes.xs),
              Text(
                YTexts.loginSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              /// Form

              /// Divider

              /// Footer
            ],
          ),
        ),
      ),
    );
  }
}
