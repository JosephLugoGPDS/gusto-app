import 'package:app/core/bloc/result_state.dart';
import 'package:app/domain/delete_all_favorites_use_case.dart';
import 'package:app/domain/no_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteAllFavoritesCubit extends Cubit<ResultState<bool>> {
  final DeleteAllFavoritesUseCase _useCase;

  DeleteAllFavoritesCubit(this._useCase) : super(const Initial());

  Future<void> deleteAllFavorites() async {
    emit(const ResultState.loading());

    final result = await _useCase.call(NoParams());

    result.fold(
      (failure) => emit(ResultState.error(error: failure.message)),
      (success) => emit(Data(data: success)),
    );
  }
}
