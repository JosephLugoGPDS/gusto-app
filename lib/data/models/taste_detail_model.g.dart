// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taste_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TasteDetailModelImpl _$$TasteDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TasteDetailModelImpl(
      name: json['name'] as String,
      id: (json['id'] as num?)?.toInt() ?? 0,
      isBattleOnly: json['is_battle_only'] as bool,
      isDefault: json['is_default'] as bool,
      isMega: json['is_mega'] as bool,
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>)
          .map((e) => TypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pokemon:
          NamedApiResource.fromJson(json['pokemon'] as Map<String, dynamic>),
      versionGroup: NamedApiResource.fromJson(
          json['version_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TasteDetailModelImplToJson(
        _$TasteDetailModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'is_battle_only': instance.isBattleOnly,
      'is_default': instance.isDefault,
      'is_mega': instance.isMega,
      'sprites': instance.sprites,
      'types': instance.types,
      'pokemon': instance.pokemon,
      'version_group': instance.versionGroup,
    };

_$SpritesImpl _$$SpritesImplFromJson(Map<String, dynamic> json) =>
    _$SpritesImpl(
      backDefault: json['back_default'] as String,
      backShiny: json['back_shiny'] as String,
      frontDefault: json['front_default'] as String,
      frontShiny: json['front_shiny'] as String,
    );

Map<String, dynamic> _$$SpritesImplToJson(_$SpritesImpl instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

_$TypeModelImpl _$$TypeModelImplFromJson(Map<String, dynamic> json) =>
    _$TypeModelImpl(
      slot: (json['slot'] as num).toInt(),
      type: NamedApiResource.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypeModelImplToJson(_$TypeModelImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$NamedApiResourceImpl _$$NamedApiResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$NamedApiResourceImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$NamedApiResourceImplToJson(
        _$NamedApiResourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
