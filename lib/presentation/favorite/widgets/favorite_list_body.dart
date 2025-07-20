import 'package:app/core/bloc/result_state.dart';
import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/extensions/string_extension.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/injectable.dart';
import 'package:app/logic/delete_favorite/delete_favorite_cubit.dart';
import 'package:app/logic/favorite_list/favorite_list_cubit.dart';
import 'package:app/presentation/favorite/widgets/favorite_item_card.dart';
import 'package:app/presentation/widgets/dialog/loading_dialog.dart';
import 'package:app/presentation/widgets/dialog/warning_dialog.dart';
import 'package:app/presentation/widgets/not_found_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FavoriteListBody extends StatelessWidget {
  const FavoriteListBody({super.key});

  @override
  Widget build(BuildContext context) {
    final _loadingDialog = LoadingDialog(context: context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DeleteFavoriteCubit>()),
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
          BlocListener<DeleteFavoriteCubit, ResultState<bool>>(
            listener: (context, state) {
              state.whenOrNull(
                loading: () =>
                    _loadingDialog.show(msg: context.l10n.deletingFavorites),
                data: (isSuccess) {
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
                error: (error) => context.showSnackBar(error),
              );
            },
          ),
        ],
        child: BlocBuilder<FavoriteListCubit,
            ResultState<List<FavoritePreferenceModel>>>(
          builder: (context, state) {
            final favoriteList = state is Data
                ? (state as Data<List<FavoritePreferenceModel>>).data
                : <FavoritePreferenceModel>[];

            if (favoriteList.isEmpty) {
              return SliverFillRemaining(
                  child: NotFoundView(
                textButton: context.l10n.addToFavorites,
                onPressed: () => Navigator.of(context).pop(),
              ));
            }

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
                    final favorite = favoriteList[index];
                    return FavoriteItemCard(
                      onDeletePressed: () {
                        WarningDialog(
                          onAcceptButton: () => context
                              .read<DeleteFavoriteCubit>()
                              .deleteFavoriteById(favorite.id),
                          title: favorite.name.capitalize,
                          description: context.l10n.confirmDeleteFavoriteTitle(
                              '*${favorite.name.capitalize}*'),
                        ).show(context);
                      },
                      favorite: favorite,
                    );
                  },
                  childCount: favoriteList.length,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.w,
                  crossAxisSpacing: 8.h,
                  childAspectRatio: 0.7,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
