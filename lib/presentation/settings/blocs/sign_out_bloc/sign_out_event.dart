part of 'sign_out_bloc.dart';

@freezed
class SignOutEvent with _$SignOutEvent {
  const factory SignOutEvent.started() = _Started;

  const factory SignOutEvent.signOut() = SignOut;
}
