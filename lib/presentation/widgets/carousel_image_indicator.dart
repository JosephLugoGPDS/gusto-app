import 'package:app/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselImageIndicator extends StatelessWidget {
  final bool isSelected;

  const CarouselImageIndicator({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 6.w,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryColor : AppColors.grayBorderColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
