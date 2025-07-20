import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/extensions/string_extension.dart';
import 'package:app/core/gen/assets.gen.dart/assets.gen.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/logic/images/current_taste_image_cubit.dart';
import 'package:app/presentation/widgets/carousel_image_indicator.dart';
import 'package:app/presentation/widgets/dialog/taste_image_dialog.dart';
import 'package:app/presentation/widgets/loading_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class NoZoomPhotoViewController extends PhotoViewController {
  @override
  set scale(double? scale) {}

  @override
  void updateMultiple({
    Offset? position,
    double? scale,
    double? rotation,
    Offset? rotationFocusPoint,
  }) {}

  @override
  void setScaleInvisibly(double? scale) {}
}

class ImageCarousel extends StatefulWidget {
  final List<String> images;
  final List<String> names;
  final double height;
  final bool isFavorite;
  final VoidCallback onFavoritePressed;

  const ImageCarousel(
      {super.key,
      required this.images,
      this.height = 100,
      required this.isFavorite,
      required this.onFavoritePressed,
      required this.names});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  late CurrentTasteImagesCubit _currentTasteImagesCubit;

  @override
  void initState() {
    super.initState();
    _currentTasteImagesCubit = CurrentTasteImagesCubit();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.images.isEmpty) {
      return Icon(Icons.image_outlined, size: widget.height.h);
    }
    final imagesFiltered =
        widget.images.length > 5 ? widget.images.sublist(0, 5) : widget.images;

    if (widget.images.length == 1) {
      return SizedBox(
          width: double.infinity,
          height: widget.height.h,
          child: InkWell(
            onTap: () {
              TasteImageDialog(
                  imagesUrl: imagesFiltered,
                  lastIndex: 0,
                  names: [widget.names.first]).show(context);
            },
            child: Image.network(
              widget.images.first,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return const Center(child: LoadingImage());
              },
              errorBuilder: (_, obj, stacktrace) =>
                  Icon(Icons.image_outlined, size: widget.height.h),
            ),
          ));
    }

    return BlocProvider(
      create: (_) => _currentTasteImagesCubit,
      child: BlocBuilder<CurrentTasteImagesCubit, int>(
          bloc: _currentTasteImagesCubit,
          builder: (context, state) {
            return Column(children: <Widget>[
              Stack(
                children: [
                  SizedBox(
                    height: widget.height.h,
                    child: PhotoViewGallery.builder(
                      onPageChanged: (index) {
                        _currentTasteImagesCubit.setCurrentImage(index);
                      },
                      itemCount: imagesFiltered.length,
                      builder: (context, index) {
                        return PhotoViewGalleryPageOptions(
                          tightMode: true,
                          controller: NoZoomPhotoViewController(),
                          imageProvider: NetworkImage(imagesFiltered[index]),
                          onTapUp: (context, details, controllerValue) {
                            TasteImageDialog(
                                    imagesUrl: imagesFiltered,
                                    lastIndex: state,
                                    names: widget.names)
                                .show(context);
                          },
                        );
                      },
                      scrollPhysics: const BouncingScrollPhysics(),
                      backgroundDecoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      loadingBuilder: (context, event) => const Center(
                        child: LoadingImage(),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    right: 20.w,
                    child: GestureDetector(
                        onTap: widget.onFavoritePressed,
                        child: widget.isFavorite
                            ? Assets.images.tastes.heartFilled.svg(
                                width: 20.w,
                                height: 20.w,
                              )
                            : Assets.images.tastes.heartOutline.svg(
                                width: 20.w,
                                height: 20.w,
                                color: AppColors.textAccentColor,
                              )),
                  ),
                ],
              ),
              Text(widget.names[state].capitalize,
                  style: context.textTheme.displayLarge),
              Container(
                height: 10.h,
                margin: EdgeInsets.only(top: 5.h),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imagesFiltered
                          .map((e) => Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: CarouselImageIndicator(
                                    isSelected:
                                        imagesFiltered.indexOf(e) == state),
                              ))
                          .toList()),
                ),
              )
            ]);
          }),
    );
  }
}
