import 'package:freezed_annotation/freezed_annotation.dart';

part 'taste_detail_model.freezed.dart';
part 'taste_detail_model.g.dart';

@freezed
class TasteDetailModel with _$TasteDetailModel {
  const factory TasteDetailModel({
    required String name,
    @Default(0) int id,
    @JsonKey(name: 'is_battle_only') required bool isBattleOnly,
    @JsonKey(name: 'is_default') required bool isDefault,
    @JsonKey(name: 'is_mega') required bool isMega,
    required Sprites sprites,
    required List<TypeModel> types,
    required NamedApiResource pokemon,
    @JsonKey(name: 'version_group') required NamedApiResource versionGroup,
  }) = _TasteDetailModel;

  factory TasteDetailModel.fromJson(Map<String, dynamic> json) =>
      _$TasteDetailModelFromJson(json);
}

@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    @JsonKey(name: 'back_default') required String backDefault,
    @JsonKey(name: 'back_shiny') required String backShiny,
    @JsonKey(name: 'front_default') required String frontDefault,
    @JsonKey(name: 'front_shiny') required String frontShiny,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}

@freezed
class TypeModel with _$TypeModel {
  const factory TypeModel({
    required int slot,
    required NamedApiResource type,
  }) = _TypeModel;

  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);
}

@freezed
class NamedApiResource with _$NamedApiResource {
  const factory NamedApiResource({
    required String name,
    required String url,
  }) = _NamedApiResource;

  factory NamedApiResource.fromJson(Map<String, dynamic> json) =>
      _$NamedApiResourceFromJson(json);
}
