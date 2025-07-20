import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_preference_model.freezed.dart';
part 'favorite_preference_model.g.dart';

@freezed
class FavoritePreferenceModel with _$FavoritePreferenceModel {
  const factory FavoritePreferenceModel({
    required String id,
    required String imageUrl,
    required String description,
    required String name,
  }) = _FavoritePreferenceModel;

  factory FavoritePreferenceModel.fromJson(Map<String, dynamic> json) =>
      _$FavoritePreferenceModelFromJson(json);
}
