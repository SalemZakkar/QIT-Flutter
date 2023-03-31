import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:salem_package/bloc/base_state.dart';
import 'package:salem_package/models/failure.dart';

import '../../../../domain/auth/entites/user_data_entity/user_data.dart';
import '../../../../domain/auth/usecases/sign_in_usecase.dart';
import '../../../core/blocs/auth_bloc/auth_bloc.dart';

part 'sign_in_event.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, BaseState> {
  SignInUseCase signInUseCase;
  AuthBloc authBloc;
  SignInBloc(this.signInUseCase , this.authBloc) : super(const BaseState()) {
    on<SignInEvent>((event, emit) {});
    on<SignIn>((event, emit) async {
      emit(state.setProgress());
      Either<Failure, UserData> res =
          await signInUseCase.call(event.email, event.password);
      res.fold(
          (l) => emit(state.setFailure(l)), (r) {
            authBloc.add(SetAuthenticated(userData: r));
            emit(state.setSuccess(unit));});
    });
  }
}
