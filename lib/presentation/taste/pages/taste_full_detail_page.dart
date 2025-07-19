import 'package:app/core/bloc/result_state.dart';
import 'package:app/core/extensions/string_extension.dart';
import 'package:app/core/gen/l10n/l10n.dart';
import 'package:app/core/resources/colors.dart';
import 'package:app/data/models/taste_detail_model.dart';
import 'package:app/injectable.dart';
import 'package:app/logic/taste_full/taste_full_cubit.dart';
import 'package:app/presentation/taste/widgets/taste_detail_view.dart';
import 'package:app/presentation/widgets/not_found_view.dart';
import 'package:app/presentation/widgets/theme_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasteFullDetailPage extends StatelessWidget {
  const TasteFullDetailPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TasteFullCubit>()..obtainTasteFullDetail(id),
      child: BlocBuilder<TasteFullCubit, ResultState<TasteDetailModel>>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.whiteColor,
            appBar: ThemeAppBar(
                title: state is Data<TasteDetailModel>
                    ? '${state.data.name.capitalize} #${state.data.id}'
                    : context.l10n.taste),
            body: SafeArea(
              child: CustomScrollView(
                physics: const ClampingScrollPhysics(),
                slivers: [
                  SliverFillRemaining(
                    child: state.whenOrNull(
                          data: (data) => TasteDetailView(taste: data),
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                          error: (msg) => const NotFoundView(),
                        ) ??
                        const NotFoundView(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
