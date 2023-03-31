import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:salem_package/bloc/base_state.dart';
import 'package:salem_package/models/failure.dart';

import '../../../../../domain/auth/usecases/sign_up_usecase.dart';
import '../../../../domain/auth/entites/user_data_entity/user_data.dart';
import '../../../core/blocs/auth_bloc/auth_bloc.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, BaseState> {
  SignUpUseCase useCase;
  AuthBloc authBloc;

  SignUpBloc(this.authBloc, this.useCase) : super(const BaseState()) {
    on<SignUpEvent>((event, emit) {});
    on<SignUp>((event, emit) async {
      emit(state.setProgress());
      Either<Failure, UserData> res = await useCase.call(
          event.email, event.password, event.confirmPassword, event.name);
      res.fold((l) => emit(state.setFailure(l)), (r) {
        authBloc.add(SetAuthenticated(userData: r));
        emit(state.setSuccess(r));
      });
    });
  }
}
