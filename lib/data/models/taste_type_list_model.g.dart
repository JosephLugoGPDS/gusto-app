// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taste_type_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TasteTypeListModelImpl _$$TasteTypeListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TasteTypeListModelImpl(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => TasteTypeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TasteTypeListModelImplToJson(
        _$TasteTypeListModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
