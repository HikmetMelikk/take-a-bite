import 'package:flutter/material.dart';

class SpacingBox extends StatelessWidget {
  final double height;
  const SpacingBox({
    super.key,
    this.height = 20,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
