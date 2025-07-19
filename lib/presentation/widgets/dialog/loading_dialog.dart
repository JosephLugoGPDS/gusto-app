import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/gen/assets.gen.dart/assets.gen.dart';
import 'package:app/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoadingDialog {
  static const String loadingContentKey = "loading_dialog_content_key";

  final BuildContext context;
  bool _isOpen = false;
  LoadingDialog({required this.context});
  bool get isOpen => _isOpen;
  void show({String? msg}) {
    if (!_isOpen) {
      _isOpen = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        builder:
            (_) => LoadingContent(
              message: msg ?? 'Cargando...',
              key: const Key(loadingContentKey),
              onClose: hide,
            ),
      );
    }
  }

  void hide() {
    if (_isOpen) {
      _isOpen = false;
      Navigator.pop(context);
    }
  }
}

class LoadingContent extends StatelessWidget {
  final String message;
  final VoidCallback onClose;

  const LoadingContent({
    super.key,
    required this.message,
    required this.onClose,
  });
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Material(
        color: Colors.transparent,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100.h,
                  width: 100.h,
                  child: Lottie.asset(
                    Assets.lottie.loader,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  message,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
            Positioned(
              top: 15,
              right: 0,
              child: FutureBuilder(
                builder: (_, snapshot) {
                  return snapshot.connectionState == ConnectionState.done
                      ? IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 25.h,
                        ),
                        onPressed: onClose,
                      )
                      : Container();
                },
                future: Future.delayed(const Duration(seconds: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
