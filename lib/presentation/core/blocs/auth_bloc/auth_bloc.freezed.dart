// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() authFromDevice,
    required TResult Function() unAuthEvent,
    required TResult Function() reset,
    required TResult Function(UserData userData) setAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? authFromDevice,
    TResult? Function()? unAuthEvent,
    TResult? Function()? reset,
    TResult? Function(UserData userData)? setAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? authFromDevice,
    TResult Function()? unAuthEvent,
    TResult Function()? reset,
    TResult Function(UserData userData)? setAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AuthFromDevice value) authFromDevice,
    required TResult Function(UnAuthEvent value) unAuthEvent,
    required TResult Function(AuthReset value) reset,
    required TResult Function(SetAuthenticated value) setAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AuthFromDevice value)? authFromDevice,
    TResult? Function(UnAuthEvent value)? unAuthEvent,
    TResult? Function(AuthReset value)? reset,
    TResult? Function(SetAuthenticated value)? setAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AuthFromDevice value)? authFromDevice,
    TResult Function(UnAuthEvent value)? unAuthEvent,
    TResult Function(AuthReset value)? reset,
    TResult Function(SetAuthenticated value)? setAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() authFromDevice,
    required TResult Function() unAuthEvent,
    required TResult Function() reset,
    required TResult Function(UserData userData) setAuthenticated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? authFromDevice,
    TResult? Function()? unAuthEvent,
    TResult? Function()? reset,
    TResult? Function(UserData userData)? setAuthenticated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? authFromDevice,
    TResult Function()? unAuthEvent,
    TResult Function()? reset,
    TResult Function(UserData userData)? setAuthenticated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AuthFromDevice value) authFromDevice,
    required TResult Function(UnAuthEvent value) unAuthEvent,
    required TResult Function(AuthReset value) reset,
    required TResult Function(SetAuthenticated value) setAuthenticated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AuthFromDevice value)? authFromDevice,
    TResult? Function(UnAuthEvent value)? unAuthEvent,
    TResult? Function(AuthReset value)? reset,
    TResult? Function(SetAuthenticated value)? setAuthenticated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AuthFromDevice value)? authFromDevice,
    TResult Function(UnAuthEvent value)? unAuthEvent,
    TResult Function(AuthReset value)? reset,
    TResult Function(SetAuthenticated value)? setAuthenticated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$AuthFromDeviceCopyWith<$Res> {
  factory _$$AuthFromDeviceCopyWith(
          _$AuthFromDevice value, $Res Function(_$AuthFromDevice) then) =
      __$$AuthFromDeviceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthFromDeviceCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthFromDevice>
    implements _$$AuthFromDeviceCopyWith<$Res> {
  __$$AuthFromDeviceCopyWithImpl(
      _$AuthFromDevice _value, $Res Function(_$AuthFromDevice) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthFromDevice implements AuthFromDevice {
  const _$AuthFromDevice();

  @override
  String toString() {
    return 'AuthEvent.authFromDevice()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthFromDevice);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() authFromDevice,
    required TResult Function() unAuthEvent,
    required TResult Function() reset,
    required TResult Function(UserData userData) setAuthenticated,
  }) {
    return authFromDevice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? authFromDevice,
    TResult? Function()? unAuthEvent,
    TResult? Function()? reset,
    TResult? Function(UserData userData)? setAuthenticated,
  }) {
    return authFromDevice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? authFromDevice,
    TResult Function()? unAuthEvent,
    TResult Function()? reset,
    TResult Function(UserData userData)? setAuthenticated,
    required TResult orElse(),
  }) {
    if (authFromDevice != null) {
      return authFromDevice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AuthFromDevice value) authFromDevice,
    required TResult Function(UnAuthEvent value) unAuthEvent,
    required TResult Function(AuthReset value) reset,
    required TResult Function(SetAuthenticated value) setAuthenticated,
  }) {
    return authFromDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AuthFromDevice value)? authFromDevice,
    TResult? Function(UnAuthEvent value)? unAuthEvent,
    TResult? Function(AuthReset value)? reset,
    TResult? Function(SetAuthenticated value)? setAuthenticated,
  }) {
    return authFromDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AuthFromDevice value)? authFromDevice,
    TResult Function(UnAuthEvent value)? unAuthEvent,
    TResult Function(AuthReset value)? reset,
    TResult Function(SetAuthenticated value)? setAuthenticated,
    required TResult orElse(),
  }) {
    if (authFromDevice != null) {
      return authFromDevice(this);
    }
    return orElse();
  }
}

abstract class AuthFromDevice implements AuthEvent {
  const factory AuthFromDevice() = _$AuthFromDevice;
}

/// @nodoc
abstract class _$$UnAuthEventCopyWith<$Res> {
  factory _$$UnAuthEventCopyWith(
          _$UnAuthEvent value, $Res Function(_$UnAuthEvent) then) =
      __$$UnAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UnAuthEvent>
    implements _$$UnAuthEventCopyWith<$Res> {
  __$$UnAuthEventCopyWithImpl(
      _$UnAuthEvent _value, $Res Function(_$UnAuthEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthEvent implements UnAuthEvent {
  const _$UnAuthEvent();

  @override
  String toString() {
    return 'AuthEvent.unAuthEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() authFromDevice,
    required TResult Function() unAuthEvent,
    required TResult Function() reset,
    required TResult Function(UserData userData) setAuthenticated,
  }) {
    return unAuthEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? authFromDevice,
    TResult? Function()? unAuthEvent,
    TResult? Function()? reset,
    TResult? Function(UserData userData)? setAuthenticated,
  }) {
    return unAuthEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? authFromDevice,
    TResult Function()? unAuthEvent,
    TResult Function()? reset,
    TResult Function(UserData userData)? setAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthEvent != null) {
      return unAuthEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AuthFromDevice value) authFromDevice,
    required TResult Function(UnAuthEvent value) unAuthEvent,
    required TResult Function(AuthReset value) reset,
    required TResult Function(SetAuthenticated value) setAuthenticated,
  }) {
    return unAuthEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AuthFromDevice value)? authFromDevice,
    TResult? Function(UnAuthEvent value)? unAuthEvent,
    TResult? Function(AuthReset value)? reset,
    TResult? Function(SetAuthenticated value)? setAuthenticated,
  }) {
    return unAuthEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AuthFromDevice value)? authFromDevice,
    TResult Function(UnAuthEvent value)? unAuthEvent,
    TResult Function(AuthReset value)? reset,
    TResult Function(SetAuthenticated value)? setAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthEvent != null) {
      return unAuthEvent(this);
    }
    return orElse();
  }
}

abstract class UnAuthEvent implements AuthEvent {
  const factory UnAuthEvent() = _$UnAuthEvent;
}

/// @nodoc
abstract class _$$AuthResetCopyWith<$Res> {
  factory _$$AuthResetCopyWith(
          _$AuthReset value, $Res Function(_$AuthReset) then) =
      __$$AuthResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthResetCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthReset>
    implements _$$AuthResetCopyWith<$Res> {
  __$$AuthResetCopyWithImpl(
      _$AuthReset _value, $Res Function(_$AuthReset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthReset implements AuthReset {
  const _$AuthReset();

  @override
  String toString() {
    return 'AuthEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() authFromDevice,
    required TResult Function() unAuthEvent,
    required TResult Function() reset,
    required TResult Function(UserData userData) setAuthenticated,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? authFromDevice,
    TResult? Function()? unAuthEvent,
    TResult? Function()? reset,
    TResult? Function(UserData userData)? setAuthenticated,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? authFromDevice,
    TResult Function()? unAuthEvent,
    TResult Function()? reset,
    TResult Function(UserData userData)? setAuthenticated,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AuthFromDevice value) authFromDevice,
    required TResult Function(UnAuthEvent value) unAuthEvent,
    required TResult Function(AuthReset value) reset,
    required TResult Function(SetAuthenticated value) setAuthenticated,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AuthFromDevice value)? authFromDevice,
    TResult? Function(UnAuthEvent value)? unAuthEvent,
    TResult? Function(AuthReset value)? reset,
    TResult? Function(SetAuthenticated value)? setAuthenticated,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AuthFromDevice value)? authFromDevice,
    TResult Function(UnAuthEvent value)? unAuthEvent,
    TResult Function(AuthReset value)? reset,
    TResult Function(SetAuthenticated value)? setAuthenticated,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class AuthReset implements AuthEvent {
  const factory AuthReset() = _$AuthReset;
}

/// @nodoc
abstract class _$$SetAuthenticatedCopyWith<$Res> {
  factory _$$SetAuthenticatedCopyWith(
          _$SetAuthenticated value, $Res Function(_$SetAuthenticated) then) =
      __$$SetAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData userData});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$$SetAuthenticatedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetAuthenticated>
    implements _$$SetAuthenticatedCopyWith<$Res> {
  __$$SetAuthenticatedCopyWithImpl(
      _$SetAuthenticated _value, $Res Function(_$SetAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
  }) {
    return _then(_$SetAuthenticated(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc

class _$SetAuthenticated implements SetAuthenticated {
  const _$SetAuthenticated({required this.userData});

  @override
  final UserData userData;

  @override
  String toString() {
    return 'AuthEvent.setAuthenticated(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAuthenticated &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAuthenticatedCopyWith<_$SetAuthenticated> get copyWith =>
      __$$SetAuthenticatedCopyWithImpl<_$SetAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() authFromDevice,
    required TResult Function() unAuthEvent,
    required TResult Function() reset,
    required TResult Function(UserData userData) setAuthenticated,
  }) {
    return setAuthenticated(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? authFromDevice,
    TResult? Function()? unAuthEvent,
    TResult? Function()? reset,
    TResult? Function(UserData userData)? setAuthenticated,
  }) {
    return setAuthenticated?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? authFromDevice,
    TResult Function()? unAuthEvent,
    TResult Function()? reset,
    TResult Function(UserData userData)? setAuthenticated,
    required TResult orElse(),
  }) {
    if (setAuthenticated != null) {
      return setAuthenticated(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AuthFromDevice value) authFromDevice,
    required TResult Function(UnAuthEvent value) unAuthEvent,
    required TResult Function(AuthReset value) reset,
    required TResult Function(SetAuthenticated value) setAuthenticated,
  }) {
    return setAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AuthFromDevice value)? authFromDevice,
    TResult? Function(UnAuthEvent value)? unAuthEvent,
    TResult? Function(AuthReset value)? reset,
    TResult? Function(SetAuthenticated value)? setAuthenticated,
  }) {
    return setAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AuthFromDevice value)? authFromDevice,
    TResult Function(UnAuthEvent value)? unAuthEvent,
    TResult Function(AuthReset value)? reset,
    TResult Function(SetAuthenticated value)? setAuthenticated,
    required TResult orElse(),
  }) {
    if (setAuthenticated != null) {
      return setAuthenticated(this);
    }
    return orElse();
  }
}

abstract class SetAuthenticated implements AuthEvent {
  const factory SetAuthenticated({required final UserData userData}) =
      _$SetAuthenticated;

  UserData get userData;
  @JsonKey(ignore: true)
  _$$SetAuthenticatedCopyWith<_$SetAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuth,
    required TResult Function() authLoading,
    required TResult Function(UserData data) authenticated,
    required TResult Function(Failure failure) authFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unAuth,
    TResult? Function()? authLoading,
    TResult? Function(UserData data)? authenticated,
    TResult? Function(Failure failure)? authFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? authLoading,
    TResult Function(UserData data)? authenticated,
    TResult Function(Failure failure)? authFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UnAuthState value) unAuth,
    required TResult Function(AuthLoading value) authLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthFail value) authFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UnAuthState value)? unAuth,
    TResult? Function(AuthLoading value)? authLoading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthFail value)? authFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UnAuthState value)? unAuth,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthFail value)? authFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuth,
    required TResult Function() authLoading,
    required TResult Function(UserData data) authenticated,
    required TResult Function(Failure failure) authFail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unAuth,
    TResult? Function()? authLoading,
    TResult? Function(UserData data)? authenticated,
    TResult? Function(Failure failure)? authFail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? authLoading,
    TResult Function(UserData data)? authenticated,
    TResult Function(Failure failure)? authFail,
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
    required TResult Function(UnAuthState value) unAuth,
    required TResult Function(AuthLoading value) authLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthFail value) authFail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UnAuthState value)? unAuth,
    TResult? Function(AuthLoading value)? authLoading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthFail value)? authFail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UnAuthState value)? unAuth,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthFail value)? authFail,
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
abstract class _$$UnAuthStateCopyWith<$Res> {
  factory _$$UnAuthStateCopyWith(
          _$UnAuthState value, $Res Function(_$UnAuthState) then) =
      __$$UnAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnAuthState>
    implements _$$UnAuthStateCopyWith<$Res> {
  __$$UnAuthStateCopyWithImpl(
      _$UnAuthState _value, $Res Function(_$UnAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthState implements UnAuthState {
  const _$UnAuthState();

  @override
  String toString() {
    return 'AuthState.unAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuth,
    required TResult Function() authLoading,
    required TResult Function(UserData data) authenticated,
    required TResult Function(Failure failure) authFail,
  }) {
    return unAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unAuth,
    TResult? Function()? authLoading,
    TResult? Function(UserData data)? authenticated,
    TResult? Function(Failure failure)? authFail,
  }) {
    return unAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? authLoading,
    TResult Function(UserData data)? authenticated,
    TResult Function(Failure failure)? authFail,
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
    required TResult Function(UnAuthState value) unAuth,
    required TResult Function(AuthLoading value) authLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthFail value) authFail,
  }) {
    return unAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UnAuthState value)? unAuth,
    TResult? Function(AuthLoading value)? authLoading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthFail value)? authFail,
  }) {
    return unAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UnAuthState value)? unAuth,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthFail value)? authFail,
    required TResult orElse(),
  }) {
    if (unAuth != null) {
      return unAuth(this);
    }
    return orElse();
  }
}

abstract class UnAuthState implements AuthState {
  const factory UnAuthState() = _$UnAuthState;
}

/// @nodoc
abstract class _$$AuthLoadingCopyWith<$Res> {
  factory _$$AuthLoadingCopyWith(
          _$AuthLoading value, $Res Function(_$AuthLoading) then) =
      __$$AuthLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoading>
    implements _$$AuthLoadingCopyWith<$Res> {
  __$$AuthLoadingCopyWithImpl(
      _$AuthLoading _value, $Res Function(_$AuthLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoading implements AuthLoading {
  const _$AuthLoading();

  @override
  String toString() {
    return 'AuthState.authLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuth,
    required TResult Function() authLoading,
    required TResult Function(UserData data) authenticated,
    required TResult Function(Failure failure) authFail,
  }) {
    return authLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unAuth,
    TResult? Function()? authLoading,
    TResult? Function(UserData data)? authenticated,
    TResult? Function(Failure failure)? authFail,
  }) {
    return authLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? authLoading,
    TResult Function(UserData data)? authenticated,
    TResult Function(Failure failure)? authFail,
    required TResult orElse(),
  }) {
    if (authLoading != null) {
      return authLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UnAuthState value) unAuth,
    required TResult Function(AuthLoading value) authLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthFail value) authFail,
  }) {
    return authLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UnAuthState value)? unAuth,
    TResult? Function(AuthLoading value)? authLoading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthFail value)? authFail,
  }) {
    return authLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UnAuthState value)? unAuth,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthFail value)? authFail,
    required TResult orElse(),
  }) {
    if (authLoading != null) {
      return authLoading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoading;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData data});

  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Authenticated>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$Authenticated(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get data {
    return $UserDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated({required this.data});

  @override
  final UserData data;

  @override
  String toString() {
    return 'AuthState.authenticated(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Authenticated &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      __$$AuthenticatedCopyWithImpl<_$Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuth,
    required TResult Function() authLoading,
    required TResult Function(UserData data) authenticated,
    required TResult Function(Failure failure) authFail,
  }) {
    return authenticated(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unAuth,
    TResult? Function()? authLoading,
    TResult? Function(UserData data)? authenticated,
    TResult? Function(Failure failure)? authFail,
  }) {
    return authenticated?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? authLoading,
    TResult Function(UserData data)? authenticated,
    TResult Function(Failure failure)? authFail,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UnAuthState value) unAuth,
    required TResult Function(AuthLoading value) authLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthFail value) authFail,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UnAuthState value)? unAuth,
    TResult? Function(AuthLoading value)? authLoading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthFail value)? authFail,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UnAuthState value)? unAuth,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthFail value)? authFail,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated({required final UserData data}) = _$Authenticated;

  UserData get data;
  @JsonKey(ignore: true)
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailCopyWith<$Res> {
  factory _$$AuthFailCopyWith(
          _$AuthFail value, $Res Function(_$AuthFail) then) =
      __$$AuthFailCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$AuthFailCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFail>
    implements _$$AuthFailCopyWith<$Res> {
  __$$AuthFailCopyWithImpl(_$AuthFail _value, $Res Function(_$AuthFail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$AuthFail(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AuthFail implements AuthFail {
  const _$AuthFail({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.authFail(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFail &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailCopyWith<_$AuthFail> get copyWith =>
      __$$AuthFailCopyWithImpl<_$AuthFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuth,
    required TResult Function() authLoading,
    required TResult Function(UserData data) authenticated,
    required TResult Function(Failure failure) authFail,
  }) {
    return authFail(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unAuth,
    TResult? Function()? authLoading,
    TResult? Function(UserData data)? authenticated,
    TResult? Function(Failure failure)? authFail,
  }) {
    return authFail?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuth,
    TResult Function()? authLoading,
    TResult Function(UserData data)? authenticated,
    TResult Function(Failure failure)? authFail,
    required TResult orElse(),
  }) {
    if (authFail != null) {
      return authFail(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UnAuthState value) unAuth,
    required TResult Function(AuthLoading value) authLoading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthFail value) authFail,
  }) {
    return authFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UnAuthState value)? unAuth,
    TResult? Function(AuthLoading value)? authLoading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthFail value)? authFail,
  }) {
    return authFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UnAuthState value)? unAuth,
    TResult Function(AuthLoading value)? authLoading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthFail value)? authFail,
    required TResult orElse(),
  }) {
    if (authFail != null) {
      return authFail(this);
    }
    return orElse();
  }
}

abstract class AuthFail implements AuthState {
  const factory AuthFail({required final Failure failure}) = _$AuthFail;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$AuthFailCopyWith<_$AuthFail> get copyWith =>
      throw _privateConstructorUsedError;
}
