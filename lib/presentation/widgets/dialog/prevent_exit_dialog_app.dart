import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/injectable.dart';
import 'package:app/presentation/widgets/buttons/theme_flat_button.dart';
import 'package:app/presentation/widgets/dialog/base_dialog.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreventExitAppDialog extends BaseDialog {
  final VoidCallback? onExit;

  PreventExitAppDialog({this.onExit});

  @override
  Widget createDescription() {
    return const Text(
      '¿Estás seguro de que quieres salir de la aplicación?',
      textAlign: TextAlign.center,
    );
  }

  @override
  Widget? createTitle() {
    return Text(
      'Confirmación',
      style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget createAcceptButton({required BuildContext context}) {
    return ThemeFlatButton(
      onPressed: () {
        if (onExit != null) {
          onExit!();
        }
        try {
          getIt<FluroRouter>().pop(context!);
        } catch (e, _) {}
      },
      backgroundColor: AppColors.onPrimaryColor,
      textColor: AppColors.whiteColor,
      text: 'Sí, salir',
    );
  }

  @override
  Widget? createCancelButton({required BuildContext context}) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: AppColors.grayBorderColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      onPressed: () => Navigator.of(context).pop(),
      child: Text('Cancelar',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
    );
  }

  @override
  Widget? createImage() {
    return Icon(
      Icons.warning,
      size: 50.h,
      color: AppColors.onPrimaryColor,
    );
  }
}
