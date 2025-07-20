import 'package:app/core/bloc/result_state.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'package:app/domain/no_params.dart';
import 'package:app/domain/obtain_favorites_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class FavoriteListCubit
    extends Cubit<ResultState<List<FavoritePreferenceModel>>> {
  final ObtainFavoritesUseCase _useCase;

  FavoriteListCubit(this._useCase) : super(const Initial());

  Future<void> obtainFavoriteList() async {
    emit(const ResultState.loading());

    final result = await _useCase.call(NoParams());

    result.fold(
      (failure) => emit(ResultState.error(error: failure.message)),
      (list) => emit(ResultState.data(data: list)),
    );
  }
}
