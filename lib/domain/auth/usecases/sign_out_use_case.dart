import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:salem_package/models/failure.dart';

import '../repository/auth_repository.dart';
@lazySingleton
class SignOutUseCase {
  AuthRepository repository;
  SignOutUseCase(this.repository);
  Future<Either<Failure, Unit>> call() async {
    return await repository.signInOut();
  }
}
