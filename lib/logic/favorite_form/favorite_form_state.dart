import 'package:app/core/bloc/result_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_form_state.freezed.dart';

@freezed
class FavoriteFormState with _$FavoriteFormState {
  const FavoriteFormState._();
  const factory FavoriteFormState({
    @Default(Initial()) ResultState<bool> resultState,
    @Default('') String id,
    @Default('') String name,
    @Default('') String imageUrl,
    @Default('') String description,
  }) = _FavoriteFormState;

  bool get isValidForm => description.isNotEmpty;
}
