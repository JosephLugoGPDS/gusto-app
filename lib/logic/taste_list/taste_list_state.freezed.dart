// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taste_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasteListState {
  List<TasteModel> get tasteList => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get hasMoreTasteToLoad => throw _privateConstructorUsedError;
  ResultState<dynamic> get resultState => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  /// Create a copy of TasteListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasteListStateCopyWith<TasteListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasteListStateCopyWith<$Res> {
  factory $TasteListStateCopyWith(
          TasteListState value, $Res Function(TasteListState) then) =
      _$TasteListStateCopyWithImpl<$Res, TasteListState>;
  @useResult
  $Res call(
      {List<TasteModel> tasteList,
      int offset,
      bool hasMoreTasteToLoad,
      ResultState<dynamic> resultState,
      String imageUrl,
      int? count});

  $ResultStateCopyWith<dynamic, $Res> get resultState;
}

/// @nodoc
class _$TasteListStateCopyWithImpl<$Res, $Val extends TasteListState>
    implements $TasteListStateCopyWith<$Res> {
  _$TasteListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasteListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasteList = null,
    Object? offset = null,
    Object? hasMoreTasteToLoad = null,
    Object? resultState = null,
    Object? imageUrl = null,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      tasteList: null == tasteList
          ? _value.tasteList
          : tasteList // ignore: cast_nullable_to_non_nullable
              as List<TasteModel>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      hasMoreTasteToLoad: null == hasMoreTasteToLoad
          ? _value.hasMoreTasteToLoad
          : hasMoreTasteToLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      resultState: null == resultState
          ? _value.resultState
          : resultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of TasteListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<dynamic, $Res> get resultState {
    return $ResultStateCopyWith<dynamic, $Res>(_value.resultState, (value) {
      return _then(_value.copyWith(resultState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TasteListStateImplCopyWith<$Res>
    implements $TasteListStateCopyWith<$Res> {
  factory _$$TasteListStateImplCopyWith(_$TasteListStateImpl value,
          $Res Function(_$TasteListStateImpl) then) =
      __$$TasteListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TasteModel> tasteList,
      int offset,
      bool hasMoreTasteToLoad,
      ResultState<dynamic> resultState,
      String imageUrl,
      int? count});

  @override
  $ResultStateCopyWith<dynamic, $Res> get resultState;
}

/// @nodoc
class __$$TasteListStateImplCopyWithImpl<$Res>
    extends _$TasteListStateCopyWithImpl<$Res, _$TasteListStateImpl>
    implements _$$TasteListStateImplCopyWith<$Res> {
  __$$TasteListStateImplCopyWithImpl(
      _$TasteListStateImpl _value, $Res Function(_$TasteListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasteListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasteList = null,
    Object? offset = null,
    Object? hasMoreTasteToLoad = null,
    Object? resultState = null,
    Object? imageUrl = null,
    Object? count = freezed,
  }) {
    return _then(_$TasteListStateImpl(
      tasteList: null == tasteList
          ? _value._tasteList
          : tasteList // ignore: cast_nullable_to_non_nullable
              as List<TasteModel>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      hasMoreTasteToLoad: null == hasMoreTasteToLoad
          ? _value.hasMoreTasteToLoad
          : hasMoreTasteToLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      resultState: null == resultState
          ? _value.resultState
          : resultState // ignore: cast_nullable_to_non_nullable
              as ResultState<dynamic>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TasteListStateImpl implements _TasteListState {
  const _$TasteListStateImpl(
      {final List<TasteModel> tasteList = const [],
      this.offset = 0,
      this.hasMoreTasteToLoad = true,
      this.resultState = const Initial(),
      this.imageUrl = '',
      this.count})
      : _tasteList = tasteList;

  final List<TasteModel> _tasteList;
  @override
  @JsonKey()
  List<TasteModel> get tasteList {
    if (_tasteList is EqualUnmodifiableListView) return _tasteList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasteList);
  }

  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final bool hasMoreTasteToLoad;
  @override
  @JsonKey()
  final ResultState<dynamic> resultState;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  final int? count;

  @override
  String toString() {
    return 'TasteListState(tasteList: $tasteList, offset: $offset, hasMoreTasteToLoad: $hasMoreTasteToLoad, resultState: $resultState, imageUrl: $imageUrl, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasteListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._tasteList, _tasteList) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.hasMoreTasteToLoad, hasMoreTasteToLoad) ||
                other.hasMoreTasteToLoad == hasMoreTasteToLoad) &&
            (identical(other.resultState, resultState) ||
                other.resultState == resultState) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasteList),
      offset,
      hasMoreTasteToLoad,
      resultState,
      imageUrl,
      count);

  /// Create a copy of TasteListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasteListStateImplCopyWith<_$TasteListStateImpl> get copyWith =>
      __$$TasteListStateImplCopyWithImpl<_$TasteListStateImpl>(
          this, _$identity);
}

abstract class _TasteListState implements TasteListState {
  const factory _TasteListState(
      {final List<TasteModel> tasteList,
      final int offset,
      final bool hasMoreTasteToLoad,
      final ResultState<dynamic> resultState,
      final String imageUrl,
      final int? count}) = _$TasteListStateImpl;

  @override
  List<TasteModel> get tasteList;
  @override
  int get offset;
  @override
  bool get hasMoreTasteToLoad;
  @override
  ResultState<dynamic> get resultState;
  @override
  String get imageUrl;
  @override
  int? get count;

  /// Create a copy of TasteListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasteListStateImplCopyWith<_$TasteListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
