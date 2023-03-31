part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;

  const factory AuthEvent.authFromDevice() = AuthFromDevice;

  const factory AuthEvent.unAuthEvent() = UnAuthEvent;

  const factory AuthEvent.reset() = AuthReset;

  const factory AuthEvent.setAuthenticated({required UserData userData}) =
      SetAuthenticated;
}
