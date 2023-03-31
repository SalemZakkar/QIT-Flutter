import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/auth/entites/user_data_entity/user_data.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/models/failure.dart';

import '../../../../domain/auth/usecases/sign_in_from_device_use_case.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  SignInFromDeviceUseCase useCase;
  AuthBloc(this.useCase) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) {});
    on<UnAuthEvent>((event, emit) {
      emit(const UnAuthState());
    });
    on<SetAuthenticated>((event, emit) {
      emit(Authenticated(data: event.userData));
    });
    on<AuthReset>((event, emit) {});
    on<AuthFromDevice>((event, emit) async {
      emit(const AuthLoading());
      Either<Failure, UserData> res = await useCase.call();
      res.fold((l) {
        if (l.type == FailureType.unAuth) {
          emit(const UnAuthState());
        } else {
          emit(AuthFail(failure: l));
        }
      }, (r) => emit(Authenticated(data: r)));
    });
  }
}
