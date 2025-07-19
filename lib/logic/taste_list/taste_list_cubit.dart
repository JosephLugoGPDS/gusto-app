import 'package:app/core/bloc/result_state.dart';
import 'package:app/domain/obtain_taste_list_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'taste_list_state.dart';

@injectable
class TasteListCubit extends Cubit<TasteListState> {
  final ObtainTasteListUseCaseUseCase _useCase;

  TasteListCubit(this._useCase) : super(const TasteListState());

  Future<void> obtainUpdatedTasteList() async {
    if (!state.hasMoreTasteToLoad) return;

    if (state.offset == 0) {
      emit(state.copyWith(resultState: const Loading()));
    } else {
      emit(state.copyWith(
          resultState: const LoadingWithMessage(message: 'Cargando...')));
    }

    final result = await _useCase(state.offset.toString());

    result.fold(
      (failure) {
        emit(state.copyWith(
          offset: 0,
          hasMoreTasteToLoad: true,
          resultState: Error(error: failure.message),
        ));
      },
      (data) {
        final updatedList = state.offset > 0
            ? [...state.tasteList, ...data.results]
            : data.results;
        final hasMore = data.next != null && data.next!.isNotEmpty;

        emit(state.copyWith(
          imageUrl: data.imageUrl ?? '',
          tasteList: updatedList,
          offset: state.offset + 10,
          hasMoreTasteToLoad: hasMore,
          count: data.count,
          resultState: Data(data: updatedList),
        ));
      },
    );
  }

  void clearTasteList() {
    emit(const TasteListState());
  }
}
