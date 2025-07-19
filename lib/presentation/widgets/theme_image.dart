import 'package:app/core/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeImage extends StatelessWidget {
  const ThemeImage({super.key, required this.id, required this.url});
  final String id;
  final String url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 120.w,
        height: 120.w,
        child: Image.network(
          id.imageUrlFormatted(url),
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return const Center(child: CircularProgressIndicator());
          },
          errorBuilder: (_, obj, stacktrace) =>
              Icon(Icons.image_rounded, size: 35.h),
        ));
  }
}
