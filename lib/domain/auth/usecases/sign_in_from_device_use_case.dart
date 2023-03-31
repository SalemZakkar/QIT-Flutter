import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/auth/entites/user_data_entity/user_data.dart';
import 'package:qit_flutter/domain/auth/repository/auth_repository.dart';
import 'package:salem_package/models/failure.dart';

@lazySingleton
class SignInFromDeviceUseCase {
  AuthRepository repository;

  SignInFromDeviceUseCase(this.repository);

  Future<Either<Failure, UserData>> call() async {
    return await repository.signInFromDevice();
  }
}
