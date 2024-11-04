import 'package:flexishop/utils/constants/colors.dart';
import 'package:flexishop/utils/constants/image_strings.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: YColors.grey),
              borderRadius: BorderRadius.circular(100.0)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              height: YSizes.iconMd,
              width: YSizes.iconMd,
              image: const AssetImage(YImages.google),
            ),
          ),
        ),
        SizedBox(width: YSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: YColors.grey),
              borderRadius: BorderRadius.circular(100.0)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              height: YSizes.iconMd,
              width: YSizes.iconMd,
              image: const AssetImage(YImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
