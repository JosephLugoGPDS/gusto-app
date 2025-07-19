import 'package:freezed_annotation/freezed_annotation.dart';

part 'taste_detail_model.freezed.dart';
part 'taste_detail_model.g.dart';

@freezed
class TasteDetailModel with _$TasteDetailModel {
  const factory TasteDetailModel({
    required String id,
    required String name,
    String? description,
    String? category,
    String? imageUrl,
  }) = _TasteDetailModel;

  factory TasteDetailModel.fromJson(Map<String, dynamic> json) =>
      _$TasteDetailModelFromJson(json);
}
