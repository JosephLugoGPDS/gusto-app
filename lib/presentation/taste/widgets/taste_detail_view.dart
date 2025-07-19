import 'package:app/core/extensions/list_extension.dart';
import 'package:app/core/extensions/tastes_extension.dart';
import 'package:app/data/models/taste_detail_model.dart';
import 'package:app/presentation/taste/widgets/taste_types_grid.dart';
import 'package:app/presentation/widgets/theme_image_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasteDetailView extends StatelessWidget {
  const TasteDetailView({super.key, required this.taste});
  final TasteDetailModel taste;

  @override
  Widget build(BuildContext context) {
    final sprites = taste.sprites.toList();
    return Column(
      children: [
        ImageCarousel(
            images: sprites,
            height: 180.h,
            names: sprites.toSpriteNames(taste.name)),
        TasteTypesGrid(taste: taste),
      ],
    );
  }
}
