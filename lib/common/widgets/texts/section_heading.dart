import 'package:flutter/material.dart';

import '../../../utils/constants/text_strings.dart';

class YSectionHeading extends StatelessWidget {
  const YSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = YTexts.viewAll,
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style:
            Theme.of(context).textTheme.headlineMedium!.apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionButton) TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}
