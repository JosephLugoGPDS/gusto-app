import 'package:app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class TileAccent extends StatelessWidget {
  final String text1;
  final String text2;
  final String? text3;
  final TextAlign? alignment;
  final TextStyle? text2Style;

  const TileAccent({
    super.key,
    required this.text1,
    required this.text2,
    this.text3,
    this.alignment,
    this.text2Style,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Container(
      alignment: alignment != null ? null : Alignment.center,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
                text: text1,
                style: textTheme.displayLarge
                    ?.copyWith(fontWeight: FontWeight.w200)),
            TextSpan(
                text: text2,
                style: text2Style ??
                    textTheme.displayLarge
                        ?.copyWith(fontWeight: FontWeight.w500)),
            if (text3 != null)
              TextSpan(text: text3, style: textTheme.displayLarge),
          ],
        ),
        textAlign: alignment ?? TextAlign.center,
      ),
    );
  }
}
