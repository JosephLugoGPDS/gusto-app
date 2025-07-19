import 'package:app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ThemeBlurBottom extends StatelessWidget {
  const ThemeBlurBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: IgnorePointer(
        child: Container(
          height: context.paddingBottom + 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.white.withOpacity(0.4)],
            ),
          ),
        ),
      ),
    );
  }
}
