// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taste_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TasteListModel _$TasteListModelFromJson(Map<String, dynamic> json) {
  return _TasteListModel.fromJson(json);
}

/// @nodoc
mixin _$TasteListModel {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get imageUrl => throw _privateConstructorUsedError;
  List<TasteModel> get results => throw _privateConstructorUsedError;

  /// Serializes this TasteListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TasteListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasteListModelCopyWith<TasteListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasteListModelCopyWith<$Res> {
  factory $TasteListModelCopyWith(
          TasteListModel value, $Res Function(TasteListModel) then) =
      _$TasteListModelCopyWithImpl<$Res, TasteListModel>;
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      @JsonKey(includeFromJson: false, includeToJson: false) String? imageUrl,
      List<TasteModel> results});
}

/// @nodoc
class _$TasteListModelCopyWithImpl<$Res, $Val extends TasteListModel>
    implements $TasteListModelCopyWith<$Res> {
  _$TasteListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasteListModel
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
              as List<TasteModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasteListModelImplCopyWith<$Res>
    implements $TasteListModelCopyWith<$Res> {
  factory _$$TasteListModelImplCopyWith(_$TasteListModelImpl value,
          $Res Function(_$TasteListModelImpl) then) =
      __$$TasteListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      @JsonKey(includeFromJson: false, includeToJson: false) String? imageUrl,
      List<TasteModel> results});
}

/// @nodoc
class __$$TasteListModelImplCopyWithImpl<$Res>
    extends _$TasteListModelCopyWithImpl<$Res, _$TasteListModelImpl>
    implements _$$TasteListModelImplCopyWith<$Res> {
  __$$TasteListModelImplCopyWithImpl(
      _$TasteListModelImpl _value, $Res Function(_$TasteListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasteListModel
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
    return _then(_$TasteListModelImpl(
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
              as List<TasteModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasteListModelImpl implements _TasteListModel {
  const _$TasteListModelImpl(
      {required this.count,
      this.next,
      this.previous,
      @JsonKey(includeFromJson: false, includeToJson: false) this.imageUrl,
      final List<TasteModel> results = const []})
      : _results = results;

  factory _$TasteListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasteListModelImplFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? imageUrl;
  final List<TasteModel> _results;
  @override
  @JsonKey()
  List<TasteModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'TasteListModel(count: $count, next: $next, previous: $previous, imageUrl: $imageUrl, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasteListModelImpl &&
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

  /// Create a copy of TasteListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasteListModelImplCopyWith<_$TasteListModelImpl> get copyWith =>
      __$$TasteListModelImplCopyWithImpl<_$TasteListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasteListModelImplToJson(
      this,
    );
  }
}

abstract class _TasteListModel implements TasteListModel {
  const factory _TasteListModel(
      {required final int count,
      final String? next,
      final String? previous,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final String? imageUrl,
      final List<TasteModel> results}) = _$TasteListModelImpl;

  factory _TasteListModel.fromJson(Map<String, dynamic> json) =
      _$TasteListModelImpl.fromJson;

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
  List<TasteModel> get results;

  /// Create a copy of TasteListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasteListModelImplCopyWith<_$TasteListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
