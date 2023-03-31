import 'package:dartz/dartz.dart';
import 'package:qit_flutter/domain/auth/entites/user_data_entity/user_data.dart';
import 'package:salem_package/models/failure.dart';

abstract class AuthRemote {
  Future<Either<Failure, UserData>> signUp(
      String email, String password, String confirm, String name);

  Future<Either<Failure, UserData>> signIn(String email, String password);

  Future<Either<Failure, UserData>> signInFromDevice();

  Future<Either<Failure, Unit>> signOut();
}
