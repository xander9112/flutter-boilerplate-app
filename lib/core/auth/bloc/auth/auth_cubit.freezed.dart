// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _UnAuth unAuth() {
    return const _UnAuth();
  }

  _UnVerified unVerified() {
    return const _UnVerified();
  }

  _Verified verified() {
    return const _Verified();
  }

  _Logout logout() {
    return const _Logout();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuth,
    required TResult Function() unVerified,
    required TResult Function() verified,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? unVerified,
    TResult Function()? verified,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? unVerified,
    TResult Function()? verified,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(_UnVerified value) unVerified,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_UnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_UnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuth,
    required TResult Function() unVerified,
    required TResult Function() verified,
    required TResult Function() logout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? unVerified,
    TResult Function()? verified,
    TResult Function()? logout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? unVerified,
    TResult Function()? verified,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(_UnVerified value) unVerified,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Logout value) logout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_UnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_UnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UnAuthCopyWith<$Res> {
  factory _$UnAuthCopyWith(_UnAuth value, $Res Function(_UnAuth) then) =
      __$UnAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnAuthCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnAuthCopyWith<$Res> {
  __$UnAuthCopyWithImpl(_UnAuth _value, $Res Function(_UnAuth) _then)
      : super(_value, (v) => _then(v as _UnAuth));

  @override
  _UnAuth get _value => super._value as _UnAuth;
}

/// @nodoc

class _$_UnAuth implements _UnAuth {
  const _$_UnAuth();

  @override
  String toString() {
    return 'AuthState.unAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuth,
    required TResult Function() unVerified,
    required TResult Function() verified,
    required TResult Function() logout,
  }) {
    return unAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? unVerified,
    TResult Function()? verified,
    TResult Function()? logout,
  }) {
    return unAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? unVerified,
    TResult Function()? verified,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (unAuth != null) {
      return unAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(_UnVerified value) unVerified,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Logout value) logout,
  }) {
    return unAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_UnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
  }) {
    return unAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_UnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (unAuth != null) {
      return unAuth(this);
    }
    return orElse();
  }
}

abstract class _UnAuth implements AuthState {
  const factory _UnAuth() = _$_UnAuth;
}

/// @nodoc
abstract class _$UnVerifiedCopyWith<$Res> {
  factory _$UnVerifiedCopyWith(
          _UnVerified value, $Res Function(_UnVerified) then) =
      __$UnVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnVerifiedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnVerifiedCopyWith<$Res> {
  __$UnVerifiedCopyWithImpl(
      _UnVerified _value, $Res Function(_UnVerified) _then)
      : super(_value, (v) => _then(v as _UnVerified));

  @override
  _UnVerified get _value => super._value as _UnVerified;
}

/// @nodoc

class _$_UnVerified implements _UnVerified {
  const _$_UnVerified();

  @override
  String toString() {
    return 'AuthState.unVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuth,
    required TResult Function() unVerified,
    required TResult Function() verified,
    required TResult Function() logout,
  }) {
    return unVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? unVerified,
    TResult Function()? verified,
    TResult Function()? logout,
  }) {
    return unVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? unVerified,
    TResult Function()? verified,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (unVerified != null) {
      return unVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(_UnVerified value) unVerified,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Logout value) logout,
  }) {
    return unVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_UnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
  }) {
    return unVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_UnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (unVerified != null) {
      return unVerified(this);
    }
    return orElse();
  }
}

abstract class _UnVerified implements AuthState {
  const factory _UnVerified() = _$_UnVerified;
}

/// @nodoc
abstract class _$VerifiedCopyWith<$Res> {
  factory _$VerifiedCopyWith(_Verified value, $Res Function(_Verified) then) =
      __$VerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$VerifiedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$VerifiedCopyWith<$Res> {
  __$VerifiedCopyWithImpl(_Verified _value, $Res Function(_Verified) _then)
      : super(_value, (v) => _then(v as _Verified));

  @override
  _Verified get _value => super._value as _Verified;
}

/// @nodoc

class _$_Verified implements _Verified {
  const _$_Verified();

  @override
  String toString() {
    return 'AuthState.verified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Verified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuth,
    required TResult Function() unVerified,
    required TResult Function() verified,
    required TResult Function() logout,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? unVerified,
    TResult Function()? verified,
    TResult Function()? logout,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? unVerified,
    TResult Function()? verified,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(_UnVerified value) unVerified,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Logout value) logout,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_UnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_UnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class _Verified implements AuthState {
  const factory _Verified() = _$_Verified;
}

/// @nodoc
abstract class _$LogoutCopyWith<$Res> {
  factory _$LogoutCopyWith(_Logout value, $Res Function(_Logout) then) =
      __$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LogoutCopyWith<$Res> {
  __$LogoutCopyWithImpl(_Logout _value, $Res Function(_Logout) _then)
      : super(_value, (v) => _then(v as _Logout));

  @override
  _Logout get _value => super._value as _Logout;
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthState.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuth,
    required TResult Function() unVerified,
    required TResult Function() verified,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? unVerified,
    TResult Function()? verified,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? unVerified,
    TResult Function()? verified,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuth value) unAuth,
    required TResult Function(_UnVerified value) unVerified,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_UnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuth value)? unAuth,
    TResult Function(_UnVerified value)? unVerified,
    TResult Function(_Verified value)? verified,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthState {
  const factory _Logout() = _$_Logout;
}
