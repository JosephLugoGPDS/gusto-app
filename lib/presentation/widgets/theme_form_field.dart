import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeFormField extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String>? onChange;
  final String? errorText;
  final bool withBorder;
  final int? maxLength;
  final int? maxLines;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final TextInputType? keyBoardType;
  final EdgeInsetsGeometry? contentPadding;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final TextAlign? textAlignVertical;
  final bool disabled;
  final Color? fillColor;
  final bool displayErrorText;
  final bool isDense;
  final VoidCallback? onFieldSubmitted;
  final VoidCallback? onTap;

  const ThemeFormField(
      {super.key,
      this.hintText,
      this.onChange,
      this.errorText,
      this.withBorder = true,
      this.controller,
      this.maxLength,
      this.focusNode,
      this.labelText,
      this.textInputAction,
      this.textCapitalization,
      this.keyBoardType,
      this.disabled = false,
      this.contentPadding,
      this.fillColor,
      this.inputFormatters,
      this.displayErrorText = true,
      this.isDense = false,
      this.maxLines,
      this.onFieldSubmitted,
      this.onTap,
      this.textAlignVertical});

  @override
  Widget build(BuildContext context) {
    InputBorder defaultBorder = withBorder
        ? OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.grayBorderColor),
            borderRadius: BorderRadius.all(Radius.circular(4.r)))
        : InputBorder.none;

    return GestureDetector(
      onTap: onTap,
      child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          style: context.textTheme.bodyMedium,
          enabled: !disabled,
          textAlign: textAlignVertical ?? TextAlign.start,
          onChanged: onChange,
          maxLength: maxLength,
          maxLines: maxLines,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          keyboardType: keyBoardType,
          inputFormatters: inputFormatters,
          onFieldSubmitted: (value) {
            if (onFieldSubmitted != null) {
              onFieldSubmitted!();
            }
          },
          decoration: InputDecoration(
            isDense: isDense,
            contentPadding: contentPadding ??
                EdgeInsets.only(
                    left: 16.w, top: 13.h, bottom: 13.h, right: 16.w),
            hintStyle: context.textTheme.bodyMedium
                ?.copyWith(color: AppColors.grayColor.withValues(alpha: 0.6)),
            labelStyle: context.textTheme.bodyMedium,
            labelText: labelText,
            hintText: hintText,
            filled: true,
            // fillColor: Colors.white,
            fillColor: fillColor ??
                (disabled ? AppColors.grayBorderColor : Colors.white),
            errorText: displayErrorText ? errorText : null,
            counterText: '',
            errorStyle: context.textTheme.bodySmall
                ?.copyWith(color: AppColors.errorColor),
            border: defaultBorder,
            enabledBorder: defaultBorder,
            focusedBorder: defaultBorder,
            focusedErrorBorder: withBorder
                ? OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(4.r)))
                : InputBorder.none,
          )),
    );
  }
}
