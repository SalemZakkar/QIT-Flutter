import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/auth/repository/auth_repository.dart';
import 'package:salem_package/models/failure.dart';

import '../entites/user_data_entity/user_data.dart';

@lazySingleton
class SignUpUseCase {
  AuthRepository repository;

  SignUpUseCase(this.repository);

  Future<Either<Failure, UserData>> call(
      String email, String password, String confirm, String name) async {
    return await repository.signUp(email, password, confirm, name);
  }
}
