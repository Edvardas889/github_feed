// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_token_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthTokenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedAuthTokenState value)
        unauthenticated,
    required TResult Function(LoadingAuthTokenState value) loading,
    required TResult Function(AuthenticatedAuthTokenState value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthenticatedAuthTokenState value)? unauthenticated,
    TResult? Function(LoadingAuthTokenState value)? loading,
    TResult? Function(AuthenticatedAuthTokenState value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedAuthTokenState value)? unauthenticated,
    TResult Function(LoadingAuthTokenState value)? loading,
    TResult Function(AuthenticatedAuthTokenState value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenStateCopyWith<$Res> {
  factory $AuthTokenStateCopyWith(
          AuthTokenState value, $Res Function(AuthTokenState) then) =
      _$AuthTokenStateCopyWithImpl<$Res, AuthTokenState>;
}

/// @nodoc
class _$AuthTokenStateCopyWithImpl<$Res, $Val extends AuthTokenState>
    implements $AuthTokenStateCopyWith<$Res> {
  _$AuthTokenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthTokenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnauthenticatedAuthTokenStateImplCopyWith<$Res> {
  factory _$$UnauthenticatedAuthTokenStateImplCopyWith(
          _$UnauthenticatedAuthTokenStateImpl value,
          $Res Function(_$UnauthenticatedAuthTokenStateImpl) then) =
      __$$UnauthenticatedAuthTokenStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedAuthTokenStateImplCopyWithImpl<$Res>
    extends _$AuthTokenStateCopyWithImpl<$Res,
        _$UnauthenticatedAuthTokenStateImpl>
    implements _$$UnauthenticatedAuthTokenStateImplCopyWith<$Res> {
  __$$UnauthenticatedAuthTokenStateImplCopyWithImpl(
      _$UnauthenticatedAuthTokenStateImpl _value,
      $Res Function(_$UnauthenticatedAuthTokenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthTokenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedAuthTokenStateImpl
    implements UnauthenticatedAuthTokenState {
  const _$UnauthenticatedAuthTokenStateImpl();

  @override
  String toString() {
    return 'AuthTokenState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthenticatedAuthTokenStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedAuthTokenState value)
        unauthenticated,
    required TResult Function(LoadingAuthTokenState value) loading,
    required TResult Function(AuthenticatedAuthTokenState value) authenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthenticatedAuthTokenState value)? unauthenticated,
    TResult? Function(LoadingAuthTokenState value)? loading,
    TResult? Function(AuthenticatedAuthTokenState value)? authenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedAuthTokenState value)? unauthenticated,
    TResult Function(LoadingAuthTokenState value)? loading,
    TResult Function(AuthenticatedAuthTokenState value)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedAuthTokenState implements AuthTokenState {
  const factory UnauthenticatedAuthTokenState() =
      _$UnauthenticatedAuthTokenStateImpl;
}

/// @nodoc
abstract class _$$LoadingAuthTokenStateImplCopyWith<$Res> {
  factory _$$LoadingAuthTokenStateImplCopyWith(
          _$LoadingAuthTokenStateImpl value,
          $Res Function(_$LoadingAuthTokenStateImpl) then) =
      __$$LoadingAuthTokenStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAuthTokenStateImplCopyWithImpl<$Res>
    extends _$AuthTokenStateCopyWithImpl<$Res, _$LoadingAuthTokenStateImpl>
    implements _$$LoadingAuthTokenStateImplCopyWith<$Res> {
  __$$LoadingAuthTokenStateImplCopyWithImpl(_$LoadingAuthTokenStateImpl _value,
      $Res Function(_$LoadingAuthTokenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthTokenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingAuthTokenStateImpl implements LoadingAuthTokenState {
  const _$LoadingAuthTokenStateImpl();

  @override
  String toString() {
    return 'AuthTokenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingAuthTokenStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedAuthTokenState value)
        unauthenticated,
    required TResult Function(LoadingAuthTokenState value) loading,
    required TResult Function(AuthenticatedAuthTokenState value) authenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthenticatedAuthTokenState value)? unauthenticated,
    TResult? Function(LoadingAuthTokenState value)? loading,
    TResult? Function(AuthenticatedAuthTokenState value)? authenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedAuthTokenState value)? unauthenticated,
    TResult Function(LoadingAuthTokenState value)? loading,
    TResult Function(AuthenticatedAuthTokenState value)? authenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAuthTokenState implements AuthTokenState {
  const factory LoadingAuthTokenState() = _$LoadingAuthTokenStateImpl;
}

/// @nodoc
abstract class _$$AuthenticatedAuthTokenStateImplCopyWith<$Res> {
  factory _$$AuthenticatedAuthTokenStateImplCopyWith(
          _$AuthenticatedAuthTokenStateImpl value,
          $Res Function(_$AuthenticatedAuthTokenStateImpl) then) =
      __$$AuthenticatedAuthTokenStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedAuthTokenStateImplCopyWithImpl<$Res>
    extends _$AuthTokenStateCopyWithImpl<$Res,
        _$AuthenticatedAuthTokenStateImpl>
    implements _$$AuthenticatedAuthTokenStateImplCopyWith<$Res> {
  __$$AuthenticatedAuthTokenStateImplCopyWithImpl(
      _$AuthenticatedAuthTokenStateImpl _value,
      $Res Function(_$AuthenticatedAuthTokenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthTokenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticatedAuthTokenStateImpl implements AuthenticatedAuthTokenState {
  const _$AuthenticatedAuthTokenStateImpl();

  @override
  String toString() {
    return 'AuthTokenState.authenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedAuthTokenStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedAuthTokenState value)
        unauthenticated,
    required TResult Function(LoadingAuthTokenState value) loading,
    required TResult Function(AuthenticatedAuthTokenState value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnauthenticatedAuthTokenState value)? unauthenticated,
    TResult? Function(LoadingAuthTokenState value)? loading,
    TResult? Function(AuthenticatedAuthTokenState value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedAuthTokenState value)? unauthenticated,
    TResult Function(LoadingAuthTokenState value)? loading,
    TResult Function(AuthenticatedAuthTokenState value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedAuthTokenState implements AuthTokenState {
  const factory AuthenticatedAuthTokenState() =
      _$AuthenticatedAuthTokenStateImpl;
}
