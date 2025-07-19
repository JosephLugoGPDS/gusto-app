import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/gen/assets.gen.dart/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchField extends StatelessWidget {
  const SearchField(
    this.hint, {
    super.key,
    required this.searchController,
    this.searchTap,
    this.switchIcons,
    this.cleanTap,
    this.onTap,
    this.isOpen = false,
    this.height,
  });

  final String hint;
  final TextEditingController searchController;
  final void Function()? searchTap;
  final void Function()? cleanTap;
  final void Function()? switchIcons;
  final void Function()? onTap;
  final bool isOpen;
  final double? height;

  static const gestureDetectorSearchTap = Key('gestureDetectorSearchTap');
  static const onTapFormFieldSearchTap = Key('onTapFormFieldSearchTap');
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 396.w,
      height: height,
      child: Material(
        shape: const StadiumBorder(),
        color: context.theme.colorScheme.secondary,
        child: TextFormField(
          key: onTapFormFieldSearchTap,
          onTap: onTap,
          style: context.primaryTextTheme.bodyMedium,
          controller: searchController,
          decoration: InputDecoration(
            border: InputBorder.none,
            alignLabelWithHint: true,
            contentPadding: EdgeInsets.symmetric(vertical: 8.h),
            fillColor: Colors.transparent,
            icon: GestureDetector(
              key: gestureDetectorSearchTap,
              onTap: searchTap,
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Assets.images.tastes.search.svg(
                  fit: BoxFit.contain,
                  height: 18.h,
                  width: 18.h,
                ),
              ),
            ),
            isDense: true,
            hintText: hint,
            hintStyle: context.primaryTextTheme.bodyLarge,
          ),
          onEditingComplete: searchTap,
          onFieldSubmitted: (String value) {},
        ),
      ),
    );
  }
}

extension on BuildContext {
  get primaryTextTheme => null;
}
