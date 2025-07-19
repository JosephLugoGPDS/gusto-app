import 'package:app/data/models/taste_type_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'taste_type_list_model.freezed.dart';
part 'taste_type_list_model.g.dart';

@freezed
class TasteTypeListModel with _$TasteTypeListModel {
  const factory TasteTypeListModel({
    required int count,
    String? next,
    String? previous,
    @JsonKey(includeFromJson: false, includeToJson: false) String? imageUrl,
    @Default([]) List<TasteTypeModel> results,
  }) = _TasteTypeListModel;

  factory TasteTypeListModel.fromJson(Map<String, dynamic> json) =>
      _$TasteTypeListModelFromJson(json);
}
