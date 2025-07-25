// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taste_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TasteTypeModel _$TasteTypeModelFromJson(Map<String, dynamic> json) {
  return _TasteTypeModel.fromJson(json);
}

/// @nodoc
mixin _$TasteTypeModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this TasteTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TasteTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasteTypeModelCopyWith<TasteTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasteTypeModelCopyWith<$Res> {
  factory $TasteTypeModelCopyWith(
          TasteTypeModel value, $Res Function(TasteTypeModel) then) =
      _$TasteTypeModelCopyWithImpl<$Res, TasteTypeModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$TasteTypeModelCopyWithImpl<$Res, $Val extends TasteTypeModel>
    implements $TasteTypeModelCopyWith<$Res> {
  _$TasteTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasteTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasteTypeModelImplCopyWith<$Res>
    implements $TasteTypeModelCopyWith<$Res> {
  factory _$$TasteTypeModelImplCopyWith(_$TasteTypeModelImpl value,
          $Res Function(_$TasteTypeModelImpl) then) =
      __$$TasteTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$TasteTypeModelImplCopyWithImpl<$Res>
    extends _$TasteTypeModelCopyWithImpl<$Res, _$TasteTypeModelImpl>
    implements _$$TasteTypeModelImplCopyWith<$Res> {
  __$$TasteTypeModelImplCopyWithImpl(
      _$TasteTypeModelImpl _value, $Res Function(_$TasteTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasteTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$TasteTypeModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasteTypeModelImpl implements _TasteTypeModel {
  const _$TasteTypeModelImpl({required this.name, required this.url});

  factory _$TasteTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasteTypeModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'TasteTypeModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasteTypeModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of TasteTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasteTypeModelImplCopyWith<_$TasteTypeModelImpl> get copyWith =>
      __$$TasteTypeModelImplCopyWithImpl<_$TasteTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasteTypeModelImplToJson(
      this,
    );
  }
}

abstract class _TasteTypeModel implements TasteTypeModel {
  const factory _TasteTypeModel(
      {required final String name,
      required final String url}) = _$TasteTypeModelImpl;

  factory _TasteTypeModel.fromJson(Map<String, dynamic> json) =
      _$TasteTypeModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of TasteTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasteTypeModelImplCopyWith<_$TasteTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
