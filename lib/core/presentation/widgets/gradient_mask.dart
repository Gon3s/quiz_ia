import 'package:flutter/material.dart';

class GradientMask extends StatelessWidget {
  const GradientMask({
    super.key,
    required this.child,
    required this.gradientColors,
  });

  final Widget child;
  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradientColors,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}
