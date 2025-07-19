import 'package:app/injectable.dart';
import 'package:app/core/gen/assets.gen.dart/assets.gen.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/presentation/widgets/theme_flat_button.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'base_dialog.dart';

class SuccessDialog extends BaseDialog {
  final String? acceptButtonText;
  final VoidCallback? onAcceptButton;
  final String textDescription;
  final String textDescriptionAccent;
  final bool isCloseDialog;

  SuccessDialog({
    this.onAcceptButton,
    this.acceptButtonText,
    required this.textDescription,
    required this.textDescriptionAccent,
    this.isCloseDialog = true,
  });

  @override
  Widget createAcceptButton({BuildContext? context}) {
    return ThemeFlatButton(
      onPressed: () {
        getIt<FluroRouter>().pop(context!);
        if (onAcceptButton != null) {
          onAcceptButton!();
        }
      },
      text: context?.l10n.accept ?? 'Aceptar',
      textColor: Colors.white,
      backgroundColor: AppColors.primaryColor,
    );
  }

  @override
  Widget? createCancelButton({BuildContext? context}) {
    return const SizedBox();
  }

  @override
  Widget createDescription() {
    return SizedBox(
      width: 240.w,
      child: Column(
        children: [
          SizedBox(height: 7.h),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: '$textDescription ',
              style: TextStyle(color: AppColors.textFineColor, fontSize: 14.sp),
              children: <TextSpan>[
                TextSpan(
                  text: textDescriptionAccent,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textAccentColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 27.h),
        ],
      ),
    );
  }

  @override
  Widget? createImage() {
    return Assets.images.shared.brand.svg(width: 97.w, height: 88.h);
  }

  @override
  Widget? createTitle() {
    return null;
  }

  @override
  bool horizontal() => false;

  @override
  bool canCloseDialog() => isCloseDialog;
}
