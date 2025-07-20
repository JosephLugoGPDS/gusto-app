// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteFormState {
  ResultState<bool> get resultState => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteFormStateCopyWith<FavoriteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteFormStateCopyWith<$Res> {
  factory $FavoriteFormStateCopyWith(
          FavoriteFormState value, $Res Function(FavoriteFormState) then) =
      _$FavoriteFormStateCopyWithImpl<$Res, FavoriteFormState>;
  @useResult
  $Res call(
      {ResultState<bool> resultState,
      String id,
      String name,
      String imageUrl,
      String description});

  $ResultStateCopyWith<bool, $Res> get resultState;
}

/// @nodoc
class _$FavoriteFormStateCopyWithImpl<$Res, $Val extends FavoriteFormState>
    implements $FavoriteFormStateCopyWith<$Res> {
  _$FavoriteFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultState = null,
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      resultState: null == resultState
          ? _value.resultState
          : resultState // ignore: cast_nullable_to_non_nullable
              as ResultState<bool>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of FavoriteFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<bool, $Res> get resultState {
    return $ResultStateCopyWith<bool, $Res>(_value.resultState, (value) {
      return _then(_value.copyWith(resultState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavoriteFormStateImplCopyWith<$Res>
    implements $FavoriteFormStateCopyWith<$Res> {
  factory _$$FavoriteFormStateImplCopyWith(_$FavoriteFormStateImpl value,
          $Res Function(_$FavoriteFormStateImpl) then) =
      __$$FavoriteFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResultState<bool> resultState,
      String id,
      String name,
      String imageUrl,
      String description});

  @override
  $ResultStateCopyWith<bool, $Res> get resultState;
}

/// @nodoc
class __$$FavoriteFormStateImplCopyWithImpl<$Res>
    extends _$FavoriteFormStateCopyWithImpl<$Res, _$FavoriteFormStateImpl>
    implements _$$FavoriteFormStateImplCopyWith<$Res> {
  __$$FavoriteFormStateImplCopyWithImpl(_$FavoriteFormStateImpl _value,
      $Res Function(_$FavoriteFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultState = null,
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? description = null,
  }) {
    return _then(_$FavoriteFormStateImpl(
      resultState: null == resultState
          ? _value.resultState
          : resultState // ignore: cast_nullable_to_non_nullable
              as ResultState<bool>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoriteFormStateImpl extends _FavoriteFormState {
  const _$FavoriteFormStateImpl(
      {this.resultState = const Initial(),
      this.id = '',
      this.name = '',
      this.imageUrl = '',
      this.description = ''})
      : super._();

  @override
  @JsonKey()
  final ResultState<bool> resultState;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'FavoriteFormState(resultState: $resultState, id: $id, name: $name, imageUrl: $imageUrl, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteFormStateImpl &&
            (identical(other.resultState, resultState) ||
                other.resultState == resultState) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, resultState, id, name, imageUrl, description);

  /// Create a copy of FavoriteFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteFormStateImplCopyWith<_$FavoriteFormStateImpl> get copyWith =>
      __$$FavoriteFormStateImplCopyWithImpl<_$FavoriteFormStateImpl>(
          this, _$identity);
}

abstract class _FavoriteFormState extends FavoriteFormState {
  const factory _FavoriteFormState(
      {final ResultState<bool> resultState,
      final String id,
      final String name,
      final String imageUrl,
      final String description}) = _$FavoriteFormStateImpl;
  const _FavoriteFormState._() : super._();

  @override
  ResultState<bool> get resultState;
  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  String get description;

  /// Create a copy of FavoriteFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteFormStateImplCopyWith<_$FavoriteFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
