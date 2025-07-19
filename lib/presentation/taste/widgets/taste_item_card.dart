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
  });

  final TasteModel taste;
  final String imageUrl;
  final VoidCallback onPressed;

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
              top: 12.w,
              left: 12.w,
              child: GestureDetector(
                  onTap: () {},
                  child: Assets.images.tastes.heartOutline.svg(
                    width: 20.w,
                    height: 20.w,
                  )),
            ),
            Positioned(
              top: 12.w,
              left: 26.w,
              right: 19.w,
              child: ThemeImage(id: taste.id!, url: imageUrl),
            ),
            Positioned(
              bottom: 12.5.w,
              left: 12.w,
              right: 12.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    taste.name.capitalize,
                    style: context.textTheme.labelLarge
                        ?.copyWith(color: AppColors.whiteColor),
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
