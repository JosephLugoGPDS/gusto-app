import 'package:app/core/bloc/result_state.dart';
import 'package:app/domain/delete_favorite_by_id_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteFavoriteCubit extends Cubit<ResultState<bool>> {
  final DeleteFavoriteByIdUseCase _useCase;

  DeleteFavoriteCubit(this._useCase) : super(const Initial());

  Future<void> deleteFavoriteById(String id) async {
    emit(const ResultState.loading());

    final result = await _useCase.call(id);

    result.fold(
      (failure) => emit(ResultState.error(error: failure.message)),
      (success) => emit(Data(data: success)),
    );
  }
}
