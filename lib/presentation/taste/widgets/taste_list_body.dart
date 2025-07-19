import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/navigation/route.dart';
import 'package:app/data/models/taste_model.dart';
import 'package:app/injectable.dart';
import 'package:app/presentation/taste/widgets/taste_item_card.dart';
import 'package:app/presentation/widgets/not_found_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasteListBody extends StatelessWidget {
  const TasteListBody(
      {super.key, required this.imageUrl, required this.tasteList});
  final String imageUrl;
  final List<TasteModel> tasteList;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: tasteList.isNotEmpty,
      replacement: const SliverFillRemaining(
        child: NotFoundView(),
      ),
      child: SliverPadding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 10.h,
          bottom: context.paddingBottom,
        ),
        sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final taste = tasteList[index];
              return TasteItemCard(
                onPressed: () => Navigator.pushNamed(
                  context,
                  getIt<Routes>()
                      .preferenceDetail
                      .replaceAll(':id', taste.id.toString()),
                ),
                taste: taste,
                imageUrl: imageUrl,
              );
            },
            childCount: tasteList.length,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.w,
            crossAxisSpacing: 8.h,
            childAspectRatio: 0.9,
          ),
        ),
      ),
    );
  }
}
