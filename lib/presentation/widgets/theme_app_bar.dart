import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ThemeAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        title,
        style: context.textTheme.bodyMedium,
      ),
      automaticallyImplyLeading: true,
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.h),
        child: Container(
          color: AppColors.grayBorderColor,
          height: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(40.h);
}
