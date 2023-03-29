import 'package:dartz/dartz.dart';
import 'package:salem_package/models/failure.dart';

abstract class AuthRemote {
  Future<Either<Failure, Unit>> signUp(
      String email, String password, String confirm, String name);
}
