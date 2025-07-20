import 'package:app/core/bloc/result_state.dart';
import 'package:app/domain/create_favorite_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:app/data/models/favorite_preference_model.dart';
import 'favorite_form_state.dart';

@injectable
class FavoriteFormCubit extends Cubit<FavoriteFormState> {
  final CreateFavoriteUseCase _useCase;

  FavoriteFormCubit(this._useCase) : super(const FavoriteFormState());

  void reset() => emit(const FavoriteFormState());

  void loadFavorite(String id, String imageUrl, String name) =>
      emit(state.copyWith(
        id: id,
        name: name,
        imageUrl: imageUrl,
      ));

  void updateDescription(String desc) =>
      emit(state.copyWith(description: desc));

  Future<void> createFavorite() async {
    emit(state.copyWith(resultState: const Loading()));

    await Future.delayed(const Duration(seconds: 1));

    final model = FavoritePreferenceModel(
      id: state.id,
      name: state.name,
      description: state.description,
      imageUrl: state.imageUrl,
    );

    final result = await _useCase.call(model);

    result.fold(
      (failure) =>
          emit(state.copyWith(resultState: Error(error: failure.message))),
      (success) => emit(state.copyWith(resultState: Data(data: success))),
    );
  }
}
