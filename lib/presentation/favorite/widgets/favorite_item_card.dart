import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/extensions/string_extension.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/presentation/taste/widgets/background_item_card.dart';
import 'package:app/presentation/widgets/theme_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FavoriteItemCard extends StatelessWidget {
  const FavoriteItemCard({
    super.key,
    required this.favorite,
    required this.onDeletePressed,
  });

  final FavoritePreferenceModel favorite;
  final VoidCallback onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Fluttertoast.showToast(
          msg: context.l10n.notImplemented,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: AppColors.onPrimaryColor,
          textColor: AppColors.whiteColor,
          fontSize: 16.sp),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: Stack(
          children: [
            const BackgroundItemCard(),
            Positioned(
              top: 10.w,
              left: 25.w,
              right: 20.w,
              child: ThemeImage(
                  id: favorite.id,
                  url: favorite.imageUrl,
                  hasFullImageUrl: true),
            ),
            Positioned(
              top: 120.w + 10.w,
              left: 20.w,
              right: 10.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    favorite.name.capitalize,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleLarge,
                  ),
                  SizedBox(height: 5.h),
                  Flexible(
                    child: Text(
                      favorite.description,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.labelSmall?.copyWith(
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10.w,
              right: 10.w,
              child: GestureDetector(
                onTap: onDeletePressed,
                child: CircleAvatar(
                  backgroundColor: AppColors.whiteColor,
                  child: Icon(
                    Icons.delete_outline,
                    color: AppColors.errorColor,
                    size: 20.w,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
