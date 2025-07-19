import 'package:freezed_annotation/freezed_annotation.dart';

part 'taste_type_model.freezed.dart';
part 'taste_type_model.g.dart';

@freezed
class TasteTypeModel with _$TasteTypeModel {
  const factory TasteTypeModel({
    required String name,
    required String url,
  }) = _TasteTypeModel;

  factory TasteTypeModel.fromJson(Map<String, dynamic> json) =>
      _$TasteTypeModelFromJson(json);
}
