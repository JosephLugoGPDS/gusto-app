// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taste_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TasteDetailModel _$TasteDetailModelFromJson(Map<String, dynamic> json) {
  return _TasteDetailModel.fromJson(json);
}

/// @nodoc
mixin _$TasteDetailModel {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_battle_only')
  bool get isBattleOnly => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mega')
  bool get isMega => throw _privateConstructorUsedError;
  Sprites get sprites => throw _privateConstructorUsedError;
  List<TypeModel> get types => throw _privateConstructorUsedError;
  NamedApiResource get pokemon => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_group')
  NamedApiResource get versionGroup => throw _privateConstructorUsedError;

  /// Serializes this TasteDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TasteDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasteDetailModelCopyWith<TasteDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasteDetailModelCopyWith<$Res> {
  factory $TasteDetailModelCopyWith(
          TasteDetailModel value, $Res Function(TasteDetailModel) then) =
      _$TasteDetailModelCopyWithImpl<$Res, TasteDetailModel>;
  @useResult
  $Res call(
      {String name,
      int id,
      @JsonKey(name: 'is_battle_only') bool isBattleOnly,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'is_mega') bool isMega,
      Sprites sprites,
      List<TypeModel> types,
      NamedApiResource pokemon,
      @JsonKey(name: 'version_group') NamedApiResource versionGroup});

  $SpritesCopyWith<$Res> get sprites;
  $NamedApiResourceCopyWith<$Res> get pokemon;
  $NamedApiResourceCopyWith<$Res> get versionGroup;
}

/// @nodoc
class _$TasteDetailModelCopyWithImpl<$Res, $Val extends TasteDetailModel>
    implements $TasteDetailModelCopyWith<$Res> {
  _$TasteDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasteDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? isBattleOnly = null,
    Object? isDefault = null,
    Object? isMega = null,
    Object? sprites = null,
    Object? types = null,
    Object? pokemon = null,
    Object? versionGroup = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isBattleOnly: null == isBattleOnly
          ? _value.isBattleOnly
          : isBattleOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      isMega: null == isMega
          ? _value.isMega
          : isMega // ignore: cast_nullable_to_non_nullable
              as bool,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeModel>,
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
      versionGroup: null == versionGroup
          ? _value.versionGroup
          : versionGroup // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ) as $Val);
  }

  /// Create a copy of TasteDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res> get sprites {
    return $SpritesCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }

  /// Create a copy of TasteDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedApiResourceCopyWith<$Res> get pokemon {
    return $NamedApiResourceCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value) as $Val);
    });
  }

  /// Create a copy of TasteDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedApiResourceCopyWith<$Res> get versionGroup {
    return $NamedApiResourceCopyWith<$Res>(_value.versionGroup, (value) {
      return _then(_value.copyWith(versionGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TasteDetailModelImplCopyWith<$Res>
    implements $TasteDetailModelCopyWith<$Res> {
  factory _$$TasteDetailModelImplCopyWith(_$TasteDetailModelImpl value,
          $Res Function(_$TasteDetailModelImpl) then) =
      __$$TasteDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int id,
      @JsonKey(name: 'is_battle_only') bool isBattleOnly,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'is_mega') bool isMega,
      Sprites sprites,
      List<TypeModel> types,
      NamedApiResource pokemon,
      @JsonKey(name: 'version_group') NamedApiResource versionGroup});

  @override
  $SpritesCopyWith<$Res> get sprites;
  @override
  $NamedApiResourceCopyWith<$Res> get pokemon;
  @override
  $NamedApiResourceCopyWith<$Res> get versionGroup;
}

/// @nodoc
class __$$TasteDetailModelImplCopyWithImpl<$Res>
    extends _$TasteDetailModelCopyWithImpl<$Res, _$TasteDetailModelImpl>
    implements _$$TasteDetailModelImplCopyWith<$Res> {
  __$$TasteDetailModelImplCopyWithImpl(_$TasteDetailModelImpl _value,
      $Res Function(_$TasteDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasteDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? isBattleOnly = null,
    Object? isDefault = null,
    Object? isMega = null,
    Object? sprites = null,
    Object? types = null,
    Object? pokemon = null,
    Object? versionGroup = null,
  }) {
    return _then(_$TasteDetailModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isBattleOnly: null == isBattleOnly
          ? _value.isBattleOnly
          : isBattleOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      isMega: null == isMega
          ? _value.isMega
          : isMega // ignore: cast_nullable_to_non_nullable
              as bool,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeModel>,
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
      versionGroup: null == versionGroup
          ? _value.versionGroup
          : versionGroup // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasteDetailModelImpl implements _TasteDetailModel {
  const _$TasteDetailModelImpl(
      {required this.name,
      this.id = 0,
      @JsonKey(name: 'is_battle_only') required this.isBattleOnly,
      @JsonKey(name: 'is_default') required this.isDefault,
      @JsonKey(name: 'is_mega') required this.isMega,
      required this.sprites,
      required final List<TypeModel> types,
      required this.pokemon,
      @JsonKey(name: 'version_group') required this.versionGroup})
      : _types = types;

  factory _$TasteDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasteDetailModelImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: 'is_battle_only')
  final bool isBattleOnly;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  @JsonKey(name: 'is_mega')
  final bool isMega;
  @override
  final Sprites sprites;
  final List<TypeModel> _types;
  @override
  List<TypeModel> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final NamedApiResource pokemon;
  @override
  @JsonKey(name: 'version_group')
  final NamedApiResource versionGroup;

  @override
  String toString() {
    return 'TasteDetailModel(name: $name, id: $id, isBattleOnly: $isBattleOnly, isDefault: $isDefault, isMega: $isMega, sprites: $sprites, types: $types, pokemon: $pokemon, versionGroup: $versionGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasteDetailModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isBattleOnly, isBattleOnly) ||
                other.isBattleOnly == isBattleOnly) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.isMega, isMega) || other.isMega == isMega) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon) &&
            (identical(other.versionGroup, versionGroup) ||
                other.versionGroup == versionGroup));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      isBattleOnly,
      isDefault,
      isMega,
      sprites,
      const DeepCollectionEquality().hash(_types),
      pokemon,
      versionGroup);

  /// Create a copy of TasteDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasteDetailModelImplCopyWith<_$TasteDetailModelImpl> get copyWith =>
      __$$TasteDetailModelImplCopyWithImpl<_$TasteDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasteDetailModelImplToJson(
      this,
    );
  }
}

abstract class _TasteDetailModel implements TasteDetailModel {
  const factory _TasteDetailModel(
      {required final String name,
      final int id,
      @JsonKey(name: 'is_battle_only') required final bool isBattleOnly,
      @JsonKey(name: 'is_default') required final bool isDefault,
      @JsonKey(name: 'is_mega') required final bool isMega,
      required final Sprites sprites,
      required final List<TypeModel> types,
      required final NamedApiResource pokemon,
      @JsonKey(name: 'version_group')
      required final NamedApiResource versionGroup}) = _$TasteDetailModelImpl;

  factory _TasteDetailModel.fromJson(Map<String, dynamic> json) =
      _$TasteDetailModelImpl.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  @JsonKey(name: 'is_battle_only')
  bool get isBattleOnly;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @override
  @JsonKey(name: 'is_mega')
  bool get isMega;
  @override
  Sprites get sprites;
  @override
  List<TypeModel> get types;
  @override
  NamedApiResource get pokemon;
  @override
  @JsonKey(name: 'version_group')
  NamedApiResource get versionGroup;

  /// Create a copy of TasteDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasteDetailModelImplCopyWith<_$TasteDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return _Sprites.fromJson(json);
}

/// @nodoc
mixin _$Sprites {
  @JsonKey(name: 'back_default')
  String get backDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_shiny')
  String get backShiny => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny')
  String get frontShiny => throw _privateConstructorUsedError;

  /// Serializes this Sprites to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sprites
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpritesCopyWith<Sprites> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesCopyWith<$Res> {
  factory $SpritesCopyWith(Sprites value, $Res Function(Sprites) then) =
      _$SpritesCopyWithImpl<$Res, Sprites>;
  @useResult
  $Res call(
      {@JsonKey(name: 'back_default') String backDefault,
      @JsonKey(name: 'back_shiny') String backShiny,
      @JsonKey(name: 'front_default') String frontDefault,
      @JsonKey(name: 'front_shiny') String frontShiny});
}

/// @nodoc
class _$SpritesCopyWithImpl<$Res, $Val extends Sprites>
    implements $SpritesCopyWith<$Res> {
  _$SpritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sprites
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = null,
    Object? backShiny = null,
    Object? frontDefault = null,
    Object? frontShiny = null,
  }) {
    return _then(_value.copyWith(
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backShiny: null == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String,
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpritesImplCopyWith<$Res> implements $SpritesCopyWith<$Res> {
  factory _$$SpritesImplCopyWith(
          _$SpritesImpl value, $Res Function(_$SpritesImpl) then) =
      __$$SpritesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'back_default') String backDefault,
      @JsonKey(name: 'back_shiny') String backShiny,
      @JsonKey(name: 'front_default') String frontDefault,
      @JsonKey(name: 'front_shiny') String frontShiny});
}

/// @nodoc
class __$$SpritesImplCopyWithImpl<$Res>
    extends _$SpritesCopyWithImpl<$Res, _$SpritesImpl>
    implements _$$SpritesImplCopyWith<$Res> {
  __$$SpritesImplCopyWithImpl(
      _$SpritesImpl _value, $Res Function(_$SpritesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sprites
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = null,
    Object? backShiny = null,
    Object? frontDefault = null,
    Object? frontShiny = null,
  }) {
    return _then(_$SpritesImpl(
      backDefault: null == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String,
      backShiny: null == backShiny
          ? _value.backShiny
          : backShiny // ignore: cast_nullable_to_non_nullable
              as String,
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      frontShiny: null == frontShiny
          ? _value.frontShiny
          : frontShiny // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpritesImpl implements _Sprites {
  const _$SpritesImpl(
      {@JsonKey(name: 'back_default') required this.backDefault,
      @JsonKey(name: 'back_shiny') required this.backShiny,
      @JsonKey(name: 'front_default') required this.frontDefault,
      @JsonKey(name: 'front_shiny') required this.frontShiny});

  factory _$SpritesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpritesImplFromJson(json);

  @override
  @JsonKey(name: 'back_default')
  final String backDefault;
  @override
  @JsonKey(name: 'back_shiny')
  final String backShiny;
  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;
  @override
  @JsonKey(name: 'front_shiny')
  final String frontShiny;

  @override
  String toString() {
    return 'Sprites(backDefault: $backDefault, backShiny: $backShiny, frontDefault: $frontDefault, frontShiny: $frontShiny)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpritesImpl &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            (identical(other.backShiny, backShiny) ||
                other.backShiny == backShiny) &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, backDefault, backShiny, frontDefault, frontShiny);

  /// Create a copy of Sprites
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpritesImplCopyWith<_$SpritesImpl> get copyWith =>
      __$$SpritesImplCopyWithImpl<_$SpritesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpritesImplToJson(
      this,
    );
  }
}

abstract class _Sprites implements Sprites {
  const factory _Sprites(
          {@JsonKey(name: 'back_default') required final String backDefault,
          @JsonKey(name: 'back_shiny') required final String backShiny,
          @JsonKey(name: 'front_default') required final String frontDefault,
          @JsonKey(name: 'front_shiny') required final String frontShiny}) =
      _$SpritesImpl;

  factory _Sprites.fromJson(Map<String, dynamic> json) = _$SpritesImpl.fromJson;

  @override
  @JsonKey(name: 'back_default')
  String get backDefault;
  @override
  @JsonKey(name: 'back_shiny')
  String get backShiny;
  @override
  @JsonKey(name: 'front_default')
  String get frontDefault;
  @override
  @JsonKey(name: 'front_shiny')
  String get frontShiny;

  /// Create a copy of Sprites
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpritesImplCopyWith<_$SpritesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeModel _$TypeModelFromJson(Map<String, dynamic> json) {
  return _TypeModel.fromJson(json);
}

/// @nodoc
mixin _$TypeModel {
  int get slot => throw _privateConstructorUsedError;
  NamedApiResource get type => throw _privateConstructorUsedError;

  /// Serializes this TypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeModelCopyWith<TypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeModelCopyWith<$Res> {
  factory $TypeModelCopyWith(TypeModel value, $Res Function(TypeModel) then) =
      _$TypeModelCopyWithImpl<$Res, TypeModel>;
  @useResult
  $Res call({int slot, NamedApiResource type});

  $NamedApiResourceCopyWith<$Res> get type;
}

/// @nodoc
class _$TypeModelCopyWithImpl<$Res, $Val extends TypeModel>
    implements $TypeModelCopyWith<$Res> {
  _$TypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ) as $Val);
  }

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedApiResourceCopyWith<$Res> get type {
    return $NamedApiResourceCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TypeModelImplCopyWith<$Res>
    implements $TypeModelCopyWith<$Res> {
  factory _$$TypeModelImplCopyWith(
          _$TypeModelImpl value, $Res Function(_$TypeModelImpl) then) =
      __$$TypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, NamedApiResource type});

  @override
  $NamedApiResourceCopyWith<$Res> get type;
}

/// @nodoc
class __$$TypeModelImplCopyWithImpl<$Res>
    extends _$TypeModelCopyWithImpl<$Res, _$TypeModelImpl>
    implements _$$TypeModelImplCopyWith<$Res> {
  __$$TypeModelImplCopyWithImpl(
      _$TypeModelImpl _value, $Res Function(_$TypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$TypeModelImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NamedApiResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeModelImpl implements _TypeModel {
  const _$TypeModelImpl({required this.slot, required this.type});

  factory _$TypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeModelImplFromJson(json);

  @override
  final int slot;
  @override
  final NamedApiResource type;

  @override
  String toString() {
    return 'TypeModel(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeModelImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeModelImplCopyWith<_$TypeModelImpl> get copyWith =>
      __$$TypeModelImplCopyWithImpl<_$TypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeModelImplToJson(
      this,
    );
  }
}

abstract class _TypeModel implements TypeModel {
  const factory _TypeModel(
      {required final int slot,
      required final NamedApiResource type}) = _$TypeModelImpl;

  factory _TypeModel.fromJson(Map<String, dynamic> json) =
      _$TypeModelImpl.fromJson;

  @override
  int get slot;
  @override
  NamedApiResource get type;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeModelImplCopyWith<_$TypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NamedApiResource _$NamedApiResourceFromJson(Map<String, dynamic> json) {
  return _NamedApiResource.fromJson(json);
}

/// @nodoc
mixin _$NamedApiResource {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this NamedApiResource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NamedApiResource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NamedApiResourceCopyWith<NamedApiResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamedApiResourceCopyWith<$Res> {
  factory $NamedApiResourceCopyWith(
          NamedApiResource value, $Res Function(NamedApiResource) then) =
      _$NamedApiResourceCopyWithImpl<$Res, NamedApiResource>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$NamedApiResourceCopyWithImpl<$Res, $Val extends NamedApiResource>
    implements $NamedApiResourceCopyWith<$Res> {
  _$NamedApiResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NamedApiResource
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
abstract class _$$NamedApiResourceImplCopyWith<$Res>
    implements $NamedApiResourceCopyWith<$Res> {
  factory _$$NamedApiResourceImplCopyWith(_$NamedApiResourceImpl value,
          $Res Function(_$NamedApiResourceImpl) then) =
      __$$NamedApiResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$NamedApiResourceImplCopyWithImpl<$Res>
    extends _$NamedApiResourceCopyWithImpl<$Res, _$NamedApiResourceImpl>
    implements _$$NamedApiResourceImplCopyWith<$Res> {
  __$$NamedApiResourceImplCopyWithImpl(_$NamedApiResourceImpl _value,
      $Res Function(_$NamedApiResourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of NamedApiResource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$NamedApiResourceImpl(
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
class _$NamedApiResourceImpl implements _NamedApiResource {
  const _$NamedApiResourceImpl({required this.name, required this.url});

  factory _$NamedApiResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamedApiResourceImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'NamedApiResource(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamedApiResourceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of NamedApiResource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NamedApiResourceImplCopyWith<_$NamedApiResourceImpl> get copyWith =>
      __$$NamedApiResourceImplCopyWithImpl<_$NamedApiResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamedApiResourceImplToJson(
      this,
    );
  }
}

abstract class _NamedApiResource implements NamedApiResource {
  const factory _NamedApiResource(
      {required final String name,
      required final String url}) = _$NamedApiResourceImpl;

  factory _NamedApiResource.fromJson(Map<String, dynamic> json) =
      _$NamedApiResourceImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of NamedApiResource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NamedApiResourceImplCopyWith<_$NamedApiResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
