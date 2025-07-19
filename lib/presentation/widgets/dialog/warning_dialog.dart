import 'package:app/core/resources/colors.dart';
import 'package:app/presentation/widgets/dialog/base_dialog.dart';
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
    final textStyle = context?.textTheme;
    return MaterialButton(
      onPressed: () {
        if (onAcceptButton != null) {
          onAcceptButton!();
        }
        try {
          //getIt<FluroRouter>().pop(context!);
          Navigator.pop(context!);
        } catch (e, stacktrace) {}
      },
      color: AppColors.errorColor,
      child: Text(
        acceptButtonText ?? 'Aceptar',
        style: textStyle?.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
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
