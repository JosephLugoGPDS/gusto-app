import 'package:app/core/bloc/result_state.dart';
import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/extensions/list_extension.dart';
import 'package:app/core/extensions/string_extension.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:app/core/navigation/route.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/data/models/taste_model.dart';
import 'package:app/injectable.dart';
import 'package:app/logic/delete_favorite/delete_favorite_cubit.dart';
import 'package:app/logic/favorite_form/favorite_form_cubit.dart';
import 'package:app/logic/favorite_form/favorite_form_state.dart';
import 'package:app/logic/favorite_list/favorite_list_cubit.dart';
import 'package:app/presentation/taste/widgets/taste_item_card.dart';
import 'package:app/presentation/widgets/dialog/create_favorite_form_dialog.dart';
import 'package:app/presentation/widgets/dialog/loading_dialog.dart';
import 'package:app/presentation/widgets/dialog/warning_dialog.dart';
import 'package:app/presentation/widgets/not_found_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TasteListBody extends StatefulWidget {
  const TasteListBody({
    super.key,
    required this.imageUrl,
    required this.tasteList,
  });

  final String imageUrl;
  final List<TasteModel> tasteList;

  @override
  State<TasteListBody> createState() => _TasteListBodyState();
}

class _TasteListBodyState extends State<TasteListBody> {
  late TextEditingController _addFavoriteController;
  late LoadingDialog _loadingDialog;
  late FavoriteListCubit _favoriteListCubit;
  late FavoriteFormCubit _favoriteFormCubit;
  late DeleteFavoriteCubit _deleteFavoriteCubit;

  @override
  void initState() {
    super.initState();
    _addFavoriteController = TextEditingController();
    _loadingDialog = LoadingDialog(context: context);
    _favoriteListCubit = getIt<FavoriteListCubit>();
    _favoriteFormCubit = getIt<FavoriteFormCubit>();
    _deleteFavoriteCubit = getIt<DeleteFavoriteCubit>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _favoriteListCubit.obtainFavoriteList();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.tasteList.isNotEmpty,
      replacement: const SliverFillRemaining(
        child: NotFoundView(),
      ),
      child: MultiBlocListener(
        listeners: [
          BlocListener<FavoriteListCubit,
              ResultState<List<FavoritePreferenceModel>>>(
            bloc: _favoriteListCubit,
            listener: (context, state) {
              if (state is Loading) {
                _loadingDialog.show(msg: context.l10n.loadingFavorites);
              } else {
                _loadingDialog.hide();
              }
            },
          ),
          BlocListener<FavoriteFormCubit, FavoriteFormState>(
            bloc: _favoriteFormCubit,
            listener: (context, state) {
              state.resultState.whenOrNull(
                    loading: () =>
                        _loadingDialog.show(msg: 'Guardando a favoritos...'),
                    data: (isSuccess) {
                      Fluttertoast.showToast(
                          msg: context.l10n.favoriteSaved,
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.TOP,
                          timeInSecForIosWeb: 1,
                          backgroundColor: AppColors.successGreenText,
                          textColor: AppColors.whiteColor,
                          fontSize: 16.sp);
                      _favoriteFormCubit.reset();
                      _favoriteListCubit.obtainFavoriteList();
                      _addFavoriteController.clear();
                    },
                    error: (error) {
                      context.showSnackBar(error);
                    },
                  ) ??
                  _loadingDialog.hide();
            },
          ),
          BlocListener<DeleteFavoriteCubit, ResultState<bool>>(
            bloc: _deleteFavoriteCubit,
            listener: (context, state) {
              state.whenOrNull(
                    loading: () => _loadingDialog.show(
                        msg: context.l10n.deletingFavorites),
                    data: (isSuccess) {
                      Fluttertoast.showToast(
                          msg: context.l10n.favoriteDeleted,
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: AppColors.errorColor,
                          textColor: AppColors.whiteColor,
                          fontSize: 16.sp);
                      _favoriteListCubit.obtainFavoriteList();
                    },
                    error: (error) {
                      context.showSnackBar(error);
                    },
                  ) ??
                  _loadingDialog.hide();
            },
          ),
        ],
        child: BlocBuilder<FavoriteListCubit,
            ResultState<List<FavoritePreferenceModel>>>(
          bloc: _favoriteListCubit,
          builder: (context, state) {
            final favoriteSet = state.whenOrNull(
                  data: (data) => data.toFavoriteStringSet(),
                ) ??
                <String>{};
            return SliverPadding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                top: 10.h,
                bottom: context.paddingBottom,
              ),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final taste = widget.tasteList[index];
                    final isFavorite = favoriteSet.contains(taste.id);
                    return TasteItemCard(
                      onFavoritePressed: () {
                        if (taste.id == null) return;
                        if (isFavorite) {
                          WarningDialog(
                            onAcceptButton: () => _deleteFavoriteCubit
                                .deleteFavoriteById(taste.id!),
                            title: taste.name.capitalize,
                            description: context.l10n
                                .confirmDeleteFavoriteTitle(
                                    '*${taste.name.capitalize}*'),
                          ).show(context);
                        } else {
                          _favoriteFormCubit.loadFavorite(
                            taste.id!,
                            taste.id!.imageUrlFormatted(widget.imageUrl),
                            taste.name,
                          );
                          CreateFavoriteFormDialog(
                              controller: _addFavoriteController,
                              onChange: (value) =>
                                  _favoriteFormCubit.updateDescription(value),
                              textDescription: context.l10n.addDescription,
                              textDescriptionAccent: context.l10n
                                  .addDescription2(
                                      '*${taste.name.capitalize}*'),
                              onAcceptButton: () => _favoriteFormCubit
                                  .createFavorite()).show(context);
                        }
                      },
                      onPressed: () => Navigator.pushNamed(
                        context,
                        getIt<Routes>()
                            .preferenceDetail
                            .replaceAll(':id', taste.id.toString()),
                      ),
                      isFavorite: isFavorite,
                      taste: taste,
                      imageUrl: widget.imageUrl,
                    );
                  },
                  childCount: widget.tasteList.length,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.w,
                  crossAxisSpacing: 8.h,
                  childAspectRatio: 0.9,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
