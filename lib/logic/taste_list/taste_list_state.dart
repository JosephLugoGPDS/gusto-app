import 'package:app/core/bloc/result_state.dart';
import 'package:app/data/models/taste_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'taste_list_state.freezed.dart';

@freezed
class TasteListState with _$TasteListState {
  const factory TasteListState({
    @Default([]) List<TasteModel> tasteList,
    @Default(0) int offset,
    @Default(true) bool hasMoreTasteToLoad,
    @Default(Initial()) ResultState resultState,
    @Default('') String imageUrl,
    int? count,
  }) = _TasteListState;
}
