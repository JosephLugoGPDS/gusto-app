import 'package:app/core/resources/colors.dart';
import 'package:app/injectable.dart';
import 'package:app/presentation/widgets/buttons/theme_flat_button.dart';
import 'package:app/presentation/widgets/dialog/base_dialog.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app/core/extensions/context_extension.dart';

class WarningDialog extends BaseDialog {
  final String title;
  final String description;
  String? acceptButtonText;
  final VoidCallback? onAcceptButton;
  final VoidCallback? onCancelButton;

  WarningDialog({
    this.title = '',
    required this.description,
    this.onAcceptButton,
    this.acceptButtonText,
    this.onCancelButton,
  });

  @override
  Widget createAcceptButton({BuildContext? context}) {
    return ThemeFlatButton(
      onPressed: () {
        if (onAcceptButton != null) {
          onAcceptButton!();
        }
        try {
          getIt<FluroRouter>().pop(context!);
        } catch (e, _) {}
      },
      backgroundColor: AppColors.errorColor,
      textColor: AppColors.whiteColor,
      text: acceptButtonText ?? 'Aceptar',
    );
  }

  @override
  Widget? createCancelButton({BuildContext? context}) {
    return null;
  }

  @override
  Widget createDescription() {
    return Text(
      description,
      style: TextStyle(fontSize: 12.sp, color: AppColors.grayColor),
      textAlign: TextAlign.center,
    );
  }

  @override
  Widget? createImage() {
    return Icon(Icons.warning, size: 50.h, color: AppColors.errorColor);
  }

  @override
  Widget? createTitle() {
    return Text(
      title,
      style: TextStyle(fontSize: 15.sp, color: AppColors.textColor),
    );
  }
}
