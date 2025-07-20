import 'package:app/core/gen/assets.gen.dart/assets.gen.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:app/presentation/widgets/buttons/theme_flat_button.dart';
import 'package:app/presentation/widgets/tile_accent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({
    super.key,
    this.title,
    this.textButton,
    this.titleAccent,
    this.onPressed,
  });
  final String? title;
  final String? titleAccent;
  final void Function()? onPressed;
  final String? textButton;

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.images.shared.notFound.svg(width: 156.w, height: 156.w),
            SizedBox(height: 17.0.h),
            SizedBox(
              width: 144.w,
              child: TileAccent(
                text1: title ?? context.l10n.searchNoResultsMsg,
                text2: titleAccent ?? context.l10n.searchNoResultsMsgAccent,
              ),
            ),
            SizedBox(height: 17.0.h),
            if (onPressed != null)
              ThemeFlatButton(
                text: textButton ?? context.l10n.retry,
                onPressed: onPressed,
              )
          ],
        ),
      );
}
