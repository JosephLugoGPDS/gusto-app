import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeTextInputField extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String>? onChange;
  final String? errorText;
  final bool withBorder;
  final int? maxLength;
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
  final Widget? icon;
  final InputDecoration? decoration;
  final bool obscureText;
  final void Function(String?)? onSaved;
  final bool isOnlyNumber;
  final bool readOnly;
  final void Function()? onTap;
  final int? maxLines;
  final double? width;

  const ThemeTextInputField({
    super.key,
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
    this.onFieldSubmitted,
    this.textAlignVertical,
    this.icon,
    this.decoration,
    this.obscureText = false,
    this.onSaved,
    this.isOnlyNumber = false,
    this.onTap,
    this.readOnly = false,
    this.maxLines,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        labelText != null
            ? Container(
              margin: const EdgeInsets.only(bottom: 0),
              child: Text(labelText!, style: context.textTheme.bodyMedium),
            )
            : const SizedBox(),
        SizedBox(
          height: 42.h,
          width: width ?? double.infinity,
          child: TextFormField(
            controller: controller,
            focusNode: focusNode,
            style: context.textTheme.bodyMedium?.copyWith(
              color: AppColors.textColor,
            ),
            enabled: !disabled,
            textAlign: textAlignVertical ?? TextAlign.start,
            onChanged: onChange,
            onSaved: onSaved,
            readOnly: readOnly,
            maxLines: maxLines,
            onTap: onTap,
            maxLength: maxLength,
            textInputAction: textInputAction,
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            keyboardType:
                keyBoardType ??
                (isOnlyNumber ? TextInputType.number : TextInputType.name),
            inputFormatters: inputFormatters,
            onFieldSubmitted: (value) {
              if (onFieldSubmitted != null) {
                onFieldSubmitted!();
              }
            },
            obscureText: obscureText,
            decoration:
                decoration ??
                InputDecoration(
                  contentPadding:
                      contentPadding ??
                      EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: maxLines == 2 ? 4.h : 13.h,
                      ),
                  hintStyle: context.textTheme.bodyMedium?.copyWith(
                    color: AppColors.textHintColor,
                  ),
                  isCollapsed: true,
                  labelStyle: context.textTheme.bodyMedium,
                  // labelText: labelText,
                  hintText: hintText,
                  filled: true,
                  fillColor:
                      fillColor ??
                      (disabled ? AppColors.grayColor : Colors.white),
                  errorText: null,
                  counterText: '',
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon:
                      icon != null
                          ? Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 8.h,
                            ),
                            child: icon,
                          )
                          : null,
                  focusedErrorBorder:
                      withBorder
                          ? OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.all(
                              Radius.circular(4.r),
                            ),
                          )
                          : InputBorder.none,
                ),
          ),
        ),
        if (displayErrorText && errorText != null)
          Padding(
            padding: EdgeInsets.only(top: 4.h, left: 16.w),
            child: Text(
              errorText!,
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColors.errorColor,
              ),
            ),
          ),
      ],
    );
  }
}
