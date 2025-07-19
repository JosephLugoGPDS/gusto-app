import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/extensions/string_extension.dart';
import 'package:app/logic/images/current_taste_image_cubit.dart';
import 'package:app/presentation/widgets/carousel_image_indicator.dart';
import 'package:app/presentation/widgets/loading_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import 'base_dialog.dart';

class TasteImageDialog extends BaseDialog {
  final List<String> imagesUrl;
  final List<String> names;

  late PageController photoViewController;

  late CurrentTasteImagesCubit _currentTasteImagesCubit;
  final int lastIndex;
  late BuildContext globalContext;

  TasteImageDialog(
      {required this.imagesUrl, required this.lastIndex, required this.names});

  @override
  Widget createAcceptButton({BuildContext? context}) {
    return Container();
  }

  @override
  Widget? createCancelButton({BuildContext? context}) {
    return null;
  }

  @override
  Widget createDescription() {
    if (imagesUrl.length == 1) {
      return SizedBox(
          width: MediaQuery.of(globalContext).size.width,
          height: MediaQuery.of(globalContext).size.height * 0.5,
          child: PhotoViewGallery.builder(
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                tightMode: true,
                imageProvider: NetworkImage(imagesUrl[index]),
                minScale: PhotoViewComputedScale.contained * 1.0,
                maxScale: PhotoViewComputedScale.covered * 5,
              );
            },
            backgroundDecoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            loadingBuilder: (context, event) => const Center(
              child: LoadingImage(),
            ),
            itemCount: imagesUrl.length,
          ));
    }

    return BlocProvider(
      create: (context) => _currentTasteImagesCubit,
      child: BlocBuilder<CurrentTasteImagesCubit, int>(
          bloc: _currentTasteImagesCubit,
          builder: (context, state) {
            return Column(children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                child: PhotoViewGallery.builder(
                  pageController: photoViewController,
                  onPageChanged: (index) {
                    _currentTasteImagesCubit.setCurrentImage(index);
                  },
                  itemCount: imagesUrl.length,
                  builder: (context, index) {
                    return PhotoViewGalleryPageOptions(
                      tightMode: true,
                      imageProvider: NetworkImage(imagesUrl[index]),
                      minScale: PhotoViewComputedScale.contained * 1.0,
                      maxScale: PhotoViewComputedScale.covered * 5,
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
              Text(names[state].capitalize,
                  style: context.textTheme.displayLarge),
              Container(
                height: 10.h,
                margin: EdgeInsets.only(top: 10.h),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imagesUrl
                          .map((e) => Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: CarouselImageIndicator(
                                    isSelected: imagesUrl.indexOf(e) == state),
                              ))
                          .toList()),
                ),
              )
            ]);
          }),
    );
  }

  @override
  Widget? createImage() {
    return null;
  }

  @override
  Widget? createTitle() {
    return null;
  }

  @override
  void initialize(BuildContext context) {
    _currentTasteImagesCubit = CurrentTasteImagesCubit();
    _currentTasteImagesCubit.setCurrentImage(lastIndex);
    photoViewController = PageController(initialPage: lastIndex);
    globalContext = context;
  }
}
