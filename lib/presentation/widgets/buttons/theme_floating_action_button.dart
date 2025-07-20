import 'package:app/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeFloatingActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Color? textColor;
  final Color? backgroundColor;
  final Widget? icon;
  final double? elevation;
  final double? radius;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final Object? heroTag;

  const ThemeFloatingActionButton({
    super.key,
    this.onPressed,
    this.text,
    this.icon,
    this.textColor,
    this.backgroundColor,
    this.elevation,
    this.radius,
    this.textStyle,
    this.width,
    this.height,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasText = text != null && text!.isNotEmpty;

    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius ?? 100.r),
    );

    if (hasText) {
      return FloatingActionButton.extended(
        heroTag: heroTag,
        onPressed: onPressed,
        elevation: elevation ?? 2,
        label: Text(
          text!,
          style: textStyle ?? Theme.of(context).textTheme.titleMedium,
        ),
        icon: icon,
        backgroundColor: backgroundColor ?? AppColors.onPrimaryColor,
        shape: shape,
      );
    } else {
      return FloatingActionButton(
        heroTag: heroTag,
        onPressed: onPressed,
        elevation: elevation ?? 2,
        backgroundColor: backgroundColor ?? AppColors.onPrimaryColor,
        shape: shape,
        child: icon ?? const Icon(Icons.add),
      );
    }
  }
}
