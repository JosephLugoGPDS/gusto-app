// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taste_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TasteModel _$TasteModelFromJson(Map<String, dynamic> json) {
  return _TasteModel.fromJson(json);
}

/// @nodoc
mixin _$TasteModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this TasteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TasteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasteModelCopyWith<TasteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasteModelCopyWith<$Res> {
  factory $TasteModelCopyWith(
          TasteModel value, $Res Function(TasteModel) then) =
      _$TasteModelCopyWithImpl<$Res, TasteModel>;
  @useResult
  $Res call(
      {String name,
      String url,
      @JsonKey(includeFromJson: false, includeToJson: false) String? id});
}

/// @nodoc
class _$TasteModelCopyWithImpl<$Res, $Val extends TasteModel>
    implements $TasteModelCopyWith<$Res> {
  _$TasteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasteModelImplCopyWith<$Res>
    implements $TasteModelCopyWith<$Res> {
  factory _$$TasteModelImplCopyWith(
          _$TasteModelImpl value, $Res Function(_$TasteModelImpl) then) =
      __$$TasteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String url,
      @JsonKey(includeFromJson: false, includeToJson: false) String? id});
}

/// @nodoc
class __$$TasteModelImplCopyWithImpl<$Res>
    extends _$TasteModelCopyWithImpl<$Res, _$TasteModelImpl>
    implements _$$TasteModelImplCopyWith<$Res> {
  __$$TasteModelImplCopyWithImpl(
      _$TasteModelImpl _value, $Res Function(_$TasteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? id = freezed,
  }) {
    return _then(_$TasteModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasteModelImpl implements _TasteModel {
  const _$TasteModelImpl(
      {required this.name,
      required this.url,
      @JsonKey(includeFromJson: false, includeToJson: false) this.id});

  factory _$TasteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasteModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? id;

  @override
  String toString() {
    return 'TasteModel(name: $name, url: $url, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasteModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url, id);

  /// Create a copy of TasteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasteModelImplCopyWith<_$TasteModelImpl> get copyWith =>
      __$$TasteModelImplCopyWithImpl<_$TasteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasteModelImplToJson(
      this,
    );
  }
}

abstract class _TasteModel implements TasteModel {
  const factory _TasteModel(
      {required final String name,
      required final String url,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final String? id}) = _$TasteModelImpl;

  factory _TasteModel.fromJson(Map<String, dynamic> json) =
      _$TasteModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id;

  /// Create a copy of TasteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasteModelImplCopyWith<_$TasteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
