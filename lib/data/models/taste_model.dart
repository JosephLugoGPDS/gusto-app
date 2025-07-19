import 'package:app/core/extensions/tastes_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'taste_model.freezed.dart';
part 'taste_model.g.dart';

@freezed
class TasteModel with _$TasteModel {
  const factory TasteModel({
    required String name,
    required String url,
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
  }) = _TasteModel;

  factory TasteModel.fromJson(Map<String, dynamic> json) =>
      _$TasteModelFromJson(json).withID;
}
