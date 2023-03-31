part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unAuth() = UnAuthState;
  const factory AuthState.authLoading() = AuthLoading;
  const factory AuthState.authenticated({
    required UserData data
}) = Authenticated;
  const factory AuthState.authFail({required Failure failure}) = AuthFail;

}
