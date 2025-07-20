import 'dart:io';

import 'package:app/core/bloc/result_state.dart';
import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:app/core/navigation/route.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/injectable.dart';
import 'package:app/logic/taste_list/taste_list_cubit.dart';
import 'package:app/logic/taste_list/taste_list_state.dart';
import 'package:app/presentation/taste/widgets/taste_list_body.dart';
import 'package:app/presentation/widgets/buttons/theme_floating_action_button.dart';
import 'package:app/presentation/widgets/dialog/prevent_exit_dialog_app.dart';
import 'package:app/presentation/widgets/not_found_view.dart';
import 'package:app/presentation/widgets/theme_app_bar.dart';
import 'package:app/presentation/widgets/theme_blur_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasteListPage extends StatefulWidget {
  const TasteListPage({super.key});

  @override
  State<TasteListPage> createState() => _TasteListPageState();
}

class _TasteListPageState extends State<TasteListPage> {
  final ScrollController _scrollController = ScrollController();
  late TasteListCubit _cubit;
  late final TextEditingController _searchController;
  late final ValueNotifier<bool> showScrollToTopButton;

  void _getMorePokemons() {
    if (_cubit.state.hasMoreTasteToLoad) {
      _cubit.obtainUpdatedTasteList();
    }
  }

  void _scrollListener() {
    const threshold = 200.0;
    final position = _scrollController.position;
    if (position.pixels + threshold >= position.maxScrollExtent) {
      _getMorePokemons();
    }
    if (position.pixels > threshold) {
      showScrollToTopButton.value = true;
    } else {
      showScrollToTopButton.value = false;
    }
  }

  Future<void> _onRefresh() async {
    _cubit.clearTasteList();
    _cubit.obtainUpdatedTasteList();
  }

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _cubit = getIt<TasteListCubit>();
    _scrollController.addListener(_scrollListener);
    showScrollToTopButton = ValueNotifier<bool>(false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _cubit.obtainUpdatedTasteList();
    });
  }

  @override
  void dispose() {
    _cubit.close();
    _searchController.dispose();
    _scrollController.dispose();
    showScrollToTopButton.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<TasteListCubit, TasteListState>(
      bloc: _cubit,
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            await PreventExitAppDialog(
              onExit: () {},
            ).show(context);
            return false;
          },
          child: Scaffold(
            backgroundColor: AppColors.whiteColor,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: ThemeFloatingActionButton(
              heroTag: 'fab-${state.count}',
              text: l10n.toGoFavorites,
              onPressed: () => Navigator.pushNamed(
                context,
                getIt<Routes>().favoriteList,
              ),
            ),
            appBar: ThemeAppBar(title: l10n.tasteListTitle),
            body: RefreshIndicator(
              onRefresh: _onRefresh,
              child: Stack(
                children: [
                  CustomScrollView(
                    controller: _scrollController,
                    physics: const ClampingScrollPhysics(),
                    slivers: [
                      state.resultState.whenOrNull(
                            loading: () => const SliverFillRemaining(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                            error: (String message) => SliverFillRemaining(
                              child: NotFoundView(
                                title: l10n.errorTitle,
                                titleAccent: ' $message',
                                onPressed: () => _onRefresh(),
                              ),
                            ),
                          ) ??
                          TasteListBody(
                              imageUrl: state.imageUrl,
                              tasteList: state.tasteList),
                      SliverToBoxAdapter(
                          child: SizedBox(height: 20 + context.paddingBottom)),
                    ],
                  ),
                  if (state.resultState is Data) const ThemeBlurBottom(),
                  ValueListenableBuilder<bool>(
                    valueListenable: showScrollToTopButton,
                    builder: (context, isVisible, child) {
                      if (!isVisible) return const SizedBox.shrink();
                      return Positioned(
                        bottom: context.paddingBottom + 20,
                        right: 20.w,
                        child: FloatingActionButton(
                          mini: true,
                          backgroundColor: AppColors.onPrimaryColor,
                          onPressed: () {
                            _scrollController.animateTo(
                              0,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Icon(
                              Platform.isIOS
                                  ? Icons.keyboard_arrow_up
                                  : Icons.arrow_upward,
                              color: Colors.white),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
