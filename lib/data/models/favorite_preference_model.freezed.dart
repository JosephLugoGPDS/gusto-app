// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_preference_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoritePreferenceModel _$FavoritePreferenceModelFromJson(
    Map<String, dynamic> json) {
  return _FavoritePreferenceModel.fromJson(json);
}

/// @nodoc
mixin _$FavoritePreferenceModel {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this FavoritePreferenceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoritePreferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoritePreferenceModelCopyWith<FavoritePreferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePreferenceModelCopyWith<$Res> {
  factory $FavoritePreferenceModelCopyWith(FavoritePreferenceModel value,
          $Res Function(FavoritePreferenceModel) then) =
      _$FavoritePreferenceModelCopyWithImpl<$Res, FavoritePreferenceModel>;
  @useResult
  $Res call({String id, String imageUrl, String description, String name});
}

/// @nodoc
class _$FavoritePreferenceModelCopyWithImpl<$Res,
        $Val extends FavoritePreferenceModel>
    implements $FavoritePreferenceModelCopyWith<$Res> {
  _$FavoritePreferenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritePreferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritePreferenceModelImplCopyWith<$Res>
    implements $FavoritePreferenceModelCopyWith<$Res> {
  factory _$$FavoritePreferenceModelImplCopyWith(
          _$FavoritePreferenceModelImpl value,
          $Res Function(_$FavoritePreferenceModelImpl) then) =
      __$$FavoritePreferenceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String imageUrl, String description, String name});
}

/// @nodoc
class __$$FavoritePreferenceModelImplCopyWithImpl<$Res>
    extends _$FavoritePreferenceModelCopyWithImpl<$Res,
        _$FavoritePreferenceModelImpl>
    implements _$$FavoritePreferenceModelImplCopyWith<$Res> {
  __$$FavoritePreferenceModelImplCopyWithImpl(
      _$FavoritePreferenceModelImpl _value,
      $Res Function(_$FavoritePreferenceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritePreferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? name = null,
  }) {
    return _then(_$FavoritePreferenceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoritePreferenceModelImpl implements _FavoritePreferenceModel {
  const _$FavoritePreferenceModelImpl(
      {required this.id,
      required this.imageUrl,
      required this.description,
      required this.name});

  factory _$FavoritePreferenceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoritePreferenceModelImplFromJson(json);

  @override
  final String id;
  @override
  final String imageUrl;
  @override
  final String description;
  @override
  final String name;

  @override
  String toString() {
    return 'FavoritePreferenceModel(id: $id, imageUrl: $imageUrl, description: $description, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritePreferenceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, description, name);

  /// Create a copy of FavoritePreferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritePreferenceModelImplCopyWith<_$FavoritePreferenceModelImpl>
      get copyWith => __$$FavoritePreferenceModelImplCopyWithImpl<
          _$FavoritePreferenceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoritePreferenceModelImplToJson(
      this,
    );
  }
}

abstract class _FavoritePreferenceModel implements FavoritePreferenceModel {
  const factory _FavoritePreferenceModel(
      {required final String id,
      required final String imageUrl,
      required final String description,
      required final String name}) = _$FavoritePreferenceModelImpl;

  factory _FavoritePreferenceModel.fromJson(Map<String, dynamic> json) =
      _$FavoritePreferenceModelImpl.fromJson;

  @override
  String get id;
  @override
  String get imageUrl;
  @override
  String get description;
  @override
  String get name;

  /// Create a copy of FavoritePreferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritePreferenceModelImplCopyWith<_$FavoritePreferenceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
