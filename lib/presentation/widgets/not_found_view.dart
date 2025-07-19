import 'package:app/core/gen/assets.gen.dart/assets.gen.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:app/presentation/widgets/tile_accent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({
    super.key,
  });

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
                text1: context.l10n.searchNoResultsMsg,
                text2: context.l10n.searchNoResultsMsgAccent,
              ),
            ),
          ],
        ),
      );
}
