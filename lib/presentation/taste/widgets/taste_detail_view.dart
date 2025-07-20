import 'package:app/core/bloc/result_state.dart';
import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/extensions/list_extension.dart';
import 'package:app/core/extensions/string_extension.dart';
import 'package:app/core/extensions/tastes_extension.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/data/models/taste_detail_model.dart';
import 'package:app/injectable.dart';
import 'package:app/logic/delete_favorite/delete_favorite_cubit.dart';
import 'package:app/logic/favorite_form/favorite_form_cubit.dart';
import 'package:app/logic/favorite_form/favorite_form_state.dart';
import 'package:app/logic/favorite_list/favorite_list_cubit.dart';
import 'package:app/presentation/taste/widgets/taste_types_grid.dart';
import 'package:app/presentation/widgets/dialog/create_favorite_form_dialog.dart';
import 'package:app/presentation/widgets/dialog/loading_dialog.dart';
import 'package:app/presentation/widgets/dialog/warning_dialog.dart';
import 'package:app/presentation/widgets/theme_image_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TasteDetailView extends StatelessWidget {
  const TasteDetailView({super.key, required this.taste});

  final TasteDetailModel taste;

  @override
  Widget build(BuildContext context) {
    final sprites = taste.sprites.toList();
    final _loadingDialog = LoadingDialog(context: context);
    final TextEditingController _addFavoriteController =
        TextEditingController();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<FavoriteListCubit>()..obtainFavoriteList(),
        ),
        BlocProvider(
          create: (context) => getIt<DeleteFavoriteCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<FavoriteFormCubit>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<FavoriteListCubit,
              ResultState<List<FavoritePreferenceModel>>>(
            listener: (context, state) {
              if (state is Loading) {
                _loadingDialog.show(msg: context.l10n.loadingFavorites);
              } else {
                _loadingDialog.hide();
              }
            },
          ),
          BlocListener<FavoriteFormCubit, FavoriteFormState>(
            listener: (context, state) {
              state.resultState.whenOrNull(
                    loading: () =>
                        _loadingDialog.show(msg: 'Guardando a favoritos...'),
                    data: (_) {
                      Fluttertoast.showToast(
                        msg: context.l10n.favoriteSaved,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1,
                        backgroundColor: AppColors.successGreenText,
                        textColor: AppColors.whiteColor,
                        fontSize: 16.sp,
                      );
                      context.read<FavoriteFormCubit>().reset();
                      context.read<FavoriteListCubit>().obtainFavoriteList();
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
            listener: (context, state) {
              state.whenOrNull(
                    loading: () => _loadingDialog.show(
                        msg: context.l10n.deletingFavorites),
                    data: (_) {
                      Fluttertoast.showToast(
                        msg: context.l10n.favoriteDeleted,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: AppColors.errorColor,
                        textColor: AppColors.whiteColor,
                        fontSize: 16.sp,
                      );
                      context.read<FavoriteListCubit>().obtainFavoriteList();
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
          builder: (context, state) {
            final favoriteSet = state.whenOrNull(
                  data: (data) => data.toFavoriteStringSet(),
                ) ??
                <String>{};

            final isFavorite = favoriteSet.contains(taste.id.toString());

            return Column(
              children: [
                ImageCarousel(
                  isFavorite: isFavorite,
                  onFavoritePressed: () {
                    if (isFavorite) {
                      WarningDialog(
                        onAcceptButton: () => context
                            .read<DeleteFavoriteCubit>()
                            .deleteFavoriteById(taste.id.toString()),
                        title: taste.name.capitalize,
                        description:
                            '¿Estás seguro de eliminar *${taste.name.capitalize}* de favoritos?',
                      ).show(context);
                    } else {
                      context.read<FavoriteFormCubit>().loadFavorite(
                            taste.id.toString(),
                            taste.sprites.frontDefault,
                            taste.name,
                          );

                      CreateFavoriteFormDialog(
                        controller: _addFavoriteController,
                        onChange: (value) => context
                            .read<FavoriteFormCubit>()
                            .updateDescription(value),
                        textDescription: context.l10n.addDescription,
                        textDescriptionAccent: context.l10n
                            .addDescription2('*${taste.name.capitalize}*'),
                        onAcceptButton: () =>
                            context.read<FavoriteFormCubit>().createFavorite(),
                      ).show(context);
                    }
                  },
                  images: sprites,
                  height: 180.h,
                  names: sprites.toSpriteNames(taste.name),
                ),
                TasteTypesGrid(taste: taste),
              ],
            );
          },
        ),
      ),
    );
  }
}
