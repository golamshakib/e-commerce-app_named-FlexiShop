import 'package:flutter/material.dart';

import 'curved_edges.dart';

class YCurvedEdgesWidget extends StatelessWidget {
  const YCurvedEdgesWidget({
    super.key, this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: YCustomCurvedEdges(),
      child: child,
    );
  }
}
