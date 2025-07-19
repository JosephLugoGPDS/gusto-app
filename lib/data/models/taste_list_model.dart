import 'package:app/data/models/taste_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'taste_list_model.freezed.dart';
part 'taste_list_model.g.dart';

@freezed
class TasteListModel with _$TasteListModel {
  const factory TasteListModel({
    required int count,
    String? next,
    String? previous,
    @JsonKey(includeFromJson: false, includeToJson: false) String? imageUrl,
    @Default([]) List<TasteModel> results,
  }) = _TasteListModel;

  factory TasteListModel.fromJson(Map<String, dynamic> json) =>
      _$TasteListModelFromJson(json);
}
