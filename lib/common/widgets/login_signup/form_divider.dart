import 'package:flexishop/utils/constants/colors.dart';
import 'package:flexishop/utils/constants/sizes.dart';
import 'package:flexishop/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key, required this.dividerText,
  });

  final String dividerText;
  @override
  Widget build(BuildContext context) {
    final dark = YDeviceUtils.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? YColors.darkGrey : YColors.grey,
            thickness: YSizes.dividerHeight,
            indent: 60,
            endIndent: 10,
          ),
        ),
        Text(dividerText,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? YColors.darkGrey : YColors.grey,
            thickness: YSizes.dividerHeight,
            indent: 10,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
