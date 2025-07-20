import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/extensions/string_extension.dart';
import 'package:app/core/gen/assets.gen.dart/assets.gen.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/data/models/taste_model.dart';
import 'package:app/presentation/taste/widgets/background_item_card.dart';
import 'package:app/presentation/widgets/theme_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasteItemCard extends StatelessWidget {
  const TasteItemCard({
    super.key,
    required this.taste,
    required this.imageUrl,
    required this.onPressed,
    required this.onFavoritePressed,
    required this.isFavorite,
  });

  final TasteModel taste;
  final String imageUrl;
  final VoidCallback onPressed;
  final VoidCallback onFavoritePressed;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: Stack(
          children: [
            const BackgroundItemCard(),
            Positioned(
              top: 10.w,
              left: 10.w,
              child: GestureDetector(
                  onTap: onFavoritePressed,
                  child: isFavorite
                      ? Assets.images.tastes.heartFilled.svg(
                          width: 20.w,
                          height: 20.w,
                        )
                      : Assets.images.tastes.heartOutline.svg(
                          width: 20.w,
                          height: 20.w,
                        )),
            ),
            Positioned(
              top: 10.w,
              left: 25.w,
              right: 20.w,
              child: ThemeImage(id: taste.id!, url: imageUrl),
            ),
            Positioned(
              bottom: 10.w,
              left: 20.w,
              right: 10.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      taste.name.capitalize,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.labelLarge
                          ?.copyWith(color: AppColors.whiteColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
