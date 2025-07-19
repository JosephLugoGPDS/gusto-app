// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taste_type_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TasteTypeListModel _$TasteTypeListModelFromJson(Map<String, dynamic> json) {
  return _TasteTypeListModel.fromJson(json);
}

/// @nodoc
mixin _$TasteTypeListModel {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get imageUrl => throw _privateConstructorUsedError;
  List<TasteTypeModel> get results => throw _privateConstructorUsedError;

  /// Serializes this TasteTypeListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TasteTypeListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasteTypeListModelCopyWith<TasteTypeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasteTypeListModelCopyWith<$Res> {
  factory $TasteTypeListModelCopyWith(
          TasteTypeListModel value, $Res Function(TasteTypeListModel) then) =
      _$TasteTypeListModelCopyWithImpl<$Res, TasteTypeListModel>;
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      @JsonKey(includeFromJson: false, includeToJson: false) String? imageUrl,
      List<TasteTypeModel> results});
}

/// @nodoc
class _$TasteTypeListModelCopyWithImpl<$Res, $Val extends TasteTypeListModel>
    implements $TasteTypeListModelCopyWith<$Res> {
  _$TasteTypeListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasteTypeListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? imageUrl = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TasteTypeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasteTypeListModelImplCopyWith<$Res>
    implements $TasteTypeListModelCopyWith<$Res> {
  factory _$$TasteTypeListModelImplCopyWith(_$TasteTypeListModelImpl value,
          $Res Function(_$TasteTypeListModelImpl) then) =
      __$$TasteTypeListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      @JsonKey(includeFromJson: false, includeToJson: false) String? imageUrl,
      List<TasteTypeModel> results});
}

/// @nodoc
class __$$TasteTypeListModelImplCopyWithImpl<$Res>
    extends _$TasteTypeListModelCopyWithImpl<$Res, _$TasteTypeListModelImpl>
    implements _$$TasteTypeListModelImplCopyWith<$Res> {
  __$$TasteTypeListModelImplCopyWithImpl(_$TasteTypeListModelImpl _value,
      $Res Function(_$TasteTypeListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasteTypeListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? imageUrl = freezed,
    Object? results = null,
  }) {
    return _then(_$TasteTypeListModelImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TasteTypeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasteTypeListModelImpl implements _TasteTypeListModel {
  const _$TasteTypeListModelImpl(
      {required this.count,
      this.next,
      this.previous,
      @JsonKey(includeFromJson: false, includeToJson: false) this.imageUrl,
      final List<TasteTypeModel> results = const []})
      : _results = results;

  factory _$TasteTypeListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasteTypeListModelImplFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? imageUrl;
  final List<TasteTypeModel> _results;
  @override
  @JsonKey()
  List<TasteTypeModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'TasteTypeListModel(count: $count, next: $next, previous: $previous, imageUrl: $imageUrl, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasteTypeListModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous, imageUrl,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of TasteTypeListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasteTypeListModelImplCopyWith<_$TasteTypeListModelImpl> get copyWith =>
      __$$TasteTypeListModelImplCopyWithImpl<_$TasteTypeListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasteTypeListModelImplToJson(
      this,
    );
  }
}

abstract class _TasteTypeListModel implements TasteTypeListModel {
  const factory _TasteTypeListModel(
      {required final int count,
      final String? next,
      final String? previous,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final String? imageUrl,
      final List<TasteTypeModel> results}) = _$TasteTypeListModelImpl;

  factory _TasteTypeListModel.fromJson(Map<String, dynamic> json) =
      _$TasteTypeListModelImpl.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get imageUrl;
  @override
  List<TasteTypeModel> get results;

  /// Create a copy of TasteTypeListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasteTypeListModelImplCopyWith<_$TasteTypeListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
