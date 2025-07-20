import 'package:app/injectable.dart';
import 'package:app/core/gen/assets.gen.dart/assets.gen.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/presentation/taste/widgets/selector_types.dart';
import 'package:app/presentation/widgets/buttons/theme_flat_button.dart';
import 'package:app/presentation/widgets/theme_form_field.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'base_dialog.dart';

class CreateFavoriteFormDialog extends BaseDialog {
  final VoidCallback? onAcceptButton;
  final String textDescription;
  final String textDescriptionAccent;
  final TextEditingController controller;
  final void Function(String)? onChange;

  CreateFavoriteFormDialog({
    this.onAcceptButton,
    required this.textDescription,
    required this.textDescriptionAccent,
    required this.controller,
    required this.onChange,
  });

  @override
  Widget createAcceptButton({BuildContext? context}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: ThemeFlatButton(
        onPressed: onAcceptButton != null
            ? () {
                getIt<FluroRouter>().pop(context!);
                onAcceptButton!();
              }
            : null,
        text: context?.l10n.accept ?? 'Aceptar',
        textColor: Colors.white,
        backgroundColor: AppColors.primaryColor,
      ),
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
          const SelectorTypes(),
          SizedBox(height: 10.h),
          ThemeFormField(
            controller: controller,
            onChange: onChange,
            maxLines: 2,
            hintText: 'Ingresa una breve descripción',
          ),
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
}
