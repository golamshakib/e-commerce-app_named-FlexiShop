import 'package:flexishop/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:flexishop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class YChoiceChip extends StatelessWidget {
  const YChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final color = YHelperFunctions.getColor(text);
    final isColor = color != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? YColors.white : null),
        avatar: isColor
            ? YRoundedContainer(
          width: 50.0,
          height: 50.0,
          backgroundColor: color,
        )
            : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? color : null,
      ),
    );
  }
}
