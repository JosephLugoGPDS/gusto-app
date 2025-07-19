import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/extensions/string_extension.dart';
import 'package:app/core/helpers/tastes_helper.dart';
import 'package:app/data/models/taste_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasteTypesGrid extends StatelessWidget {
  const TasteTypesGrid({
    super.key,
    required this.taste,
  });

  final TasteDetailModel taste;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Wrap(
        spacing: 10.w,
        runSpacing: 5.h,
        children: List.generate(taste.types.length, (index) {
          final type = taste.types[index];
          final backgroundColor = TastesHelper.getRandomColorDropdownItem();
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.center,
                padding:
                    EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.5.h),
                decoration: BoxDecoration(
                  color: backgroundColor.id.hexToColor,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(type.type.name.capitalize,
                    style: context.textTheme.titleMedium),
              ),
            ],
          );
        }),
      ),
    );
  }
}
