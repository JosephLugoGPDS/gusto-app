import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/injectable.dart';
import 'package:app/logic/taste_list/taste_list_cubit.dart';
import 'package:app/logic/taste_list/taste_list_state.dart';
import 'package:app/presentation/taste/widgets/taste_list_body.dart';
import 'package:app/presentation/widgets/theme_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasteListPage extends StatefulWidget {
  const TasteListPage({super.key});

  @override
  State<TasteListPage> createState() => _TasteListPageState();
}

class _TasteListPageState extends State<TasteListPage> {
  final ScrollController _scrollController = ScrollController();
  late TasteListCubit _cubit;
  late final TextEditingController _searchController;

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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _cubit.obtainUpdatedTasteList();
    });
  }

  @override
  void dispose() {
    _cubit.close();
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<TasteListCubit, TasteListState>(
      bloc: _cubit,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: ThemeAppBar(title: l10n.tasteListTitle),
          body: RefreshIndicator(
            onRefresh: _onRefresh,
            child: CustomScrollView(
              controller: _scrollController,
              physics: const ClampingScrollPhysics(),
              slivers: [
                state.resultState.whenOrNull(
                      loading: () => const SliverFillRemaining(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      // error:
                    ) ??
                    TasteListBody(
                        imageUrl: state.imageUrl, tasteList: state.tasteList),
                SliverToBoxAdapter(
                    child: SizedBox(height: 20 + context.paddingBottom)),
              ],
            ),
          ),
        );
      },
    );
  }
}
