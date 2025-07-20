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
    if (state.isLoading || !state.hasMoreTasteToLoad) return;

    emit(state.copyWith(isLoading: true));

    if (state.offset == 0) {
      emit(state.copyWith(resultState: const Loading()));
    } else {
      emit(state.copyWith(
        resultState: const LoadingWithMessage(message: 'Cargando...'),
      ));
    }

    final result = await _useCase(state.offset.toString());

    result.fold(
      (failure) {
        emit(state.copyWith(
          offset: 0,
          hasMoreTasteToLoad: true,
          isLoading: false,
          resultState: Error(error: failure.message),
        ));
      },
      (data) {
        final newItems = data.results;
        final hasMore = data.next != null && data.next!.isNotEmpty;

        final updatedList = state.offset > 0
            ? [
                ...state.tasteList,
                ...newItems.where(
                  (newItem) => !state.tasteList
                      .any((existingItem) => existingItem.id == newItem.id),
                )
              ]
            : newItems;

        emit(state.copyWith(
          imageUrl: data.imageUrl ?? '',
          tasteList: updatedList,
          offset: state.offset + 10,
          hasMoreTasteToLoad: hasMore,
          count: data.count,
          isLoading: false,
          resultState: Data(data: updatedList),
        ));
      },
    );
  }

  void clearTasteList() {
    emit(const TasteListState());
  }
}
