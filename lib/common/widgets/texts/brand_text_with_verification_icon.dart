import 'package:flexishop/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import 'brand_title_text.dart';

class YBrandTitleTextWithVerificationIcon extends StatelessWidget {
  const YBrandTitleTextWithVerificationIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = YColors.primary,
    this.textAlign,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        YBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        ),
        const SizedBox(width: YSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: YSizes.iconXs),
      ],
    );
  }
}
