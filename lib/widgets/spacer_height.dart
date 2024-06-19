import 'package:flutter/material.dart';

class SpacerHeight extends StatelessWidget {
  final double heightSize;

  const SpacerHeight({
    super.key,
    required this.heightSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightSize,
    );
  }
}
