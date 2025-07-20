import 'package:app/core/bloc/result_state.dart';
import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/injectable.dart';
import 'package:app/logic/favorite_list/favorite_list_cubit.dart';
import 'package:app/presentation/favorite/widgets/favorite_list_body.dart';
import 'package:app/presentation/widgets/not_found_view.dart';
import 'package:app/presentation/widgets/theme_app_bar.dart';
import 'package:app/presentation/widgets/theme_blur_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteListPage extends StatelessWidget {
  const FavoriteListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final _scrollController = ScrollController();
    return BlocProvider(
      create: (context) => getIt<FavoriteListCubit>()..obtainFavoriteList(),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: ThemeAppBar(title: l10n.titleFavorites),
        body: RefreshIndicator(
          onRefresh: () =>
              context.read<FavoriteListCubit>().obtainFavoriteList(),
          child: BlocBuilder<FavoriteListCubit,
              ResultState<List<FavoritePreferenceModel>>>(
            builder: (context, state) {
              return Stack(
                children: [
                  CustomScrollView(
                    controller: _scrollController,
                    physics: const ClampingScrollPhysics(),
                    slivers: [
                      state.whenOrNull(
                            data: (data) => const FavoriteListBody(),
                            loading: () => const SliverFillRemaining(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                            error: (String message) => SliverFillRemaining(
                              child: NotFoundView(
                                title: l10n.errorTitle,
                                titleAccent: ' $message',
                                onPressed: () => () => context
                                    .read<FavoriteListCubit>()
                                    .obtainFavoriteList(),
                              ),
                            ),
                          ) ??
                          const SizedBox.shrink(),
                      SliverToBoxAdapter(
                          child: SizedBox(height: 20 + context.paddingBottom)),
                    ],
                  ),
                  if (state is Data) const ThemeBlurBottom(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
