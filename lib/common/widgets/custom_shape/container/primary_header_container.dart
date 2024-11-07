import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class YPrimaryHeaderContainer extends StatelessWidget {
  const YPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return YCurvedEdgesWidget(
      child: Container(
        color: YColors.primary,
        padding: const EdgeInsets.all(0.0),
        child: Stack(
          children: [
            /// Background custom shape
            Positioned(
                top: -150.0,
                right: -250.0,
                child: YCircularContainer(
                  backgroundColor: YColors.white.withOpacity(0.1),
                )),
            Positioned(
              top: 100.0,
              right: -300.0,
              child: YCircularContainer(
                backgroundColor: YColors.white.withOpacity(0.1),
              ),
            ),
           child,
          ],
        ),
      ),
    );
  }
}
