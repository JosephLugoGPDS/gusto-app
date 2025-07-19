// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_session_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifySessionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckSession value) checkSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckSession value)? checkSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckSession value)? checkSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifySessionEventCopyWith<$Res> {
  factory $VerifySessionEventCopyWith(
          VerifySessionEvent value, $Res Function(VerifySessionEvent) then) =
      _$VerifySessionEventCopyWithImpl<$Res, VerifySessionEvent>;
}

/// @nodoc
class _$VerifySessionEventCopyWithImpl<$Res, $Val extends VerifySessionEvent>
    implements $VerifySessionEventCopyWith<$Res> {
  _$VerifySessionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifySessionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckSessionImplCopyWith<$Res> {
  factory _$$CheckSessionImplCopyWith(
          _$CheckSessionImpl value, $Res Function(_$CheckSessionImpl) then) =
      __$$CheckSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckSessionImplCopyWithImpl<$Res>
    extends _$VerifySessionEventCopyWithImpl<$Res, _$CheckSessionImpl>
    implements _$$CheckSessionImplCopyWith<$Res> {
  __$$CheckSessionImplCopyWithImpl(
      _$CheckSessionImpl _value, $Res Function(_$CheckSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifySessionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckSessionImpl implements CheckSession {
  const _$CheckSessionImpl();

  @override
  String toString() {
    return 'VerifySessionEvent.checkSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSession,
  }) {
    return checkSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSession,
  }) {
    return checkSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSession,
    required TResult orElse(),
  }) {
    if (checkSession != null) {
      return checkSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckSession value) checkSession,
  }) {
    return checkSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckSession value)? checkSession,
  }) {
    return checkSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckSession value)? checkSession,
    required TResult orElse(),
  }) {
    if (checkSession != null) {
      return checkSession(this);
    }
    return orElse();
  }
}

abstract class CheckSession implements VerifySessionEvent {
  const factory CheckSession() = _$CheckSessionImpl;
}
