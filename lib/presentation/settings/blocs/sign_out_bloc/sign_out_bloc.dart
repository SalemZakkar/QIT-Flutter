import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:salem_package/bloc/base_state.dart';
import 'package:salem_package/models/failure.dart';

import '../../../../domain/auth/usecases/sign_out_use_case.dart';
import '../../../core/blocs/auth_bloc/auth_bloc.dart';

part 'sign_out_event.dart';
part 'sign_out_bloc.freezed.dart';
@injectable
class SignOutBloc extends Bloc<SignOutEvent, BaseState> {
  SignOutUseCase signOutUseCase;
  AuthBloc authBloc;
  SignOutBloc(this.signOutUseCase, this.authBloc) : super(const BaseState()) {
    on<SignOutEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<SignOut>((event, emit) async {
      emit(state.setProgress());
      Either<Failure, Unit> res = await signOutUseCase.call();
      res.fold((l) => emit(state.setFailure(l)), (r) {
        authBloc.add(const UnAuthEvent());
        emit(state.setSuccess(unit));
      });
    });
  }
}
