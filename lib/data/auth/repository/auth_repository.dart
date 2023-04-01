import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/data/auth/source/remote/auth_remote.dart';
import 'package:qit_flutter/domain/auth/entites/user_data_entity/user_data.dart';
import 'package:salem_package/models/failure.dart';

import '../../../domain/auth/repository/auth_repository.dart';
import '../source/local/local_data_source.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRemote remote;
  LocalDataSource localDataSource;

  AuthRepositoryImpl(this.remote, this.localDataSource);

  @override
  Future<Either<Failure, UserData>> signUp(
      String email, String password, String confirm, String name) {
    return remote.signUp(email, password, confirm, name);
  }

  @override
  Future<Either<Failure, UserData>> signIn(String email, String password) {
    return remote.signIn(email, password);
  }

  @override
  Future<Either<Failure, UserData>> signInFromDevice() {
    return remote.signInFromDevice();
  }

  @override
  Future<Either<Failure, Unit>> signInOut() async {
    return await remote.signOut();
  }

  @override
  bool firstTime() {
    return localDataSource.firstTime;
  }
}
