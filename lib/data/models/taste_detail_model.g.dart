// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taste_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TasteDetailModelImpl _$$TasteDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TasteDetailModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      category: json['category'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$TasteDetailModelImplToJson(
        _$TasteDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'imageUrl': instance.imageUrl,
    };
