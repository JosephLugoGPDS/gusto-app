// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taste_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TasteListModelImpl _$$TasteListModelImplFromJson(Map<String, dynamic> json) =>
    _$TasteListModelImpl(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => TasteModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TasteListModelImplToJson(
        _$TasteListModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
