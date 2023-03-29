import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:salem_package/bloc/base_state.dart';
import 'package:salem_package/models/failure.dart';

import '../../../../../domain/auth/usecases/sign_up_usecase.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, BaseState> {
  SignUpUseCase useCase;

  SignUpBloc(this.useCase) : super(const BaseState()) {
    on<SignUpEvent>((event, emit) {});
    on<SignUp>((event, emit) async {
      emit(state.setProgress());
      Either<Failure, Unit> res = await useCase.call(
          event.email, event.password, event.confirmPassword, event.name);
      res.fold(
          (l) => emit(state.setFailure(l)), (r) => emit(state.setSuccess(r)));
    });
  }
}
