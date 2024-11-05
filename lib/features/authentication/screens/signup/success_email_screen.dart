import 'package:flutter/material.dart';

import '../../../../common/widgets/success_verify_reset/success_screen_item.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class SuccessEmailScreen extends StatelessWidget {
  static const String routeName = '/success_email';

  const SuccessEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SuccessScreenItem(
          image: YImages.successfulIllustration,
          title: YTexts.yourAccountCreatedTitle,
          subTitle: YTexts.yourAccountCreatedSubTitle,
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
