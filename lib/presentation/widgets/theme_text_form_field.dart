import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Color? backgroundColor;
  final Color? borderColor;
  final Function(String s)? onChanged;
  final VoidCallback? suffixIconOnTap;
  final Widget? icon;
  final bool? obscureText;
  final FocusNode? focusNode;
  final VoidCallback? onSubmitted;
  final int maxLines;
  final String? errorText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool isOnlyNumber;
  final bool isLastFocus;
  final bool readOnly;
  final double? width;
  final void Function()? onTap;
  final Color? readOnlyColor;
  final bool displayErrorText;

  const ThemeTextFormField({
    super.key,
    this.controller,
    required this.hintText,
    this.backgroundColor,
    this.borderColor,
    this.onChanged,
    this.suffixIconOnTap,
    this.icon,
    this.obscureText,
    this.focusNode,
    this.onSubmitted,
    this.maxLines = 1,
    this.keyboardType,
    this.textInputAction,
    this.isOnlyNumber = false,
    this.isLastFocus = false,
    this.errorText,
    this.readOnly = false,
    this.width,
    this.onTap,
    this.readOnlyColor,
    this.displayErrorText = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: Container(
        width: width ?? double.maxFinite,
        height: 42.h,
        decoration: BoxDecoration(
          border: Border.all(
            color:
                borderColor ??
                (readOnly
                    ? (readOnlyColor ?? AppColors.grayBorderColor)
                    : Colors.white),
          ),
          borderRadius: BorderRadius.circular(2.r),
          color:
              backgroundColor ??
              (readOnly
                  ? (readOnlyColor ?? AppColors.grayBorderColor)
                  : Colors.white),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            Expanded(
              child: TextField(
                controller: controller,
                obscureText: obscureText ?? false,
                onChanged: onChanged,
                cursorColor: Colors.blue,
                keyboardType:
                    keyboardType ??
                    (isOnlyNumber ? TextInputType.number : TextInputType.name),
                maxLines: maxLines,
                readOnly: readOnly,
                textInputAction:
                    textInputAction ??
                    (isLastFocus ? TextInputAction.done : TextInputAction.next),
                focusNode: focusNode,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: AppColors.textColor,
                ),
                decoration: InputDecoration(
                  errorText: displayErrorText ? errorText : null,
                  hintStyle: context.textTheme.bodyMedium?.copyWith(
                    color: AppColors.textHintColor,
                  ),
                  hintText: hintText,
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  hoverColor: Colors.white,
                  errorStyle: context.textTheme.bodySmall?.copyWith(
                    color: AppColors.errorColor,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(4.r)),
                  ),
                ),
                onTap:
                    onTap ??
                    () {
                      if (controller != null && controller!.text != "") {
                        controller!.selection = TextSelection(
                          baseOffset: 0,
                          extentOffset: controller!.text.length,
                        );
                      }
                    },
                onSubmitted: (value) {
                  if (onSubmitted != null) onSubmitted!();
                },
              ),
            ),
            if (icon != null)
              GestureDetector(
                onTap: () {
                  if (suffixIconOnTap != null) {
                    suffixIconOnTap!();
                  }
                },
                behavior: HitTestBehavior.opaque,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 11.h,
                    bottom: 11.h,
                    right: 12.w,
                    left: 16.w,
                  ),
                  child: icon,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
