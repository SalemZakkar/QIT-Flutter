import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/data/auth/source/remote/auth_remote.dart';
import 'package:salem_package/models/failure.dart';

import '../../../domain/auth/repository/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRemote remote;

  AuthRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, Unit>> signUp(
      String email, String password, String confirm, String name) {
    return remote.signUp(email, password, confirm, name);
  }
}
