import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/data/auth/models/user_data/user_data_model.dart';
import 'package:qit_flutter/data/auth/source/remote/auth_remote.dart';
import 'package:qit_flutter/data/core/base_repository/base_repository.dart';
import 'package:salem_package/models/failure.dart';

@LazySingleton(as: AuthRemote)
class AuthRemoteImpl extends AuthRemote with BaseRepository {
  final Dio dio;

  AuthRemoteImpl(this.dio);

  @override
  Future<Either<Failure, Unit>> signUp(
      String email, String password, String confirm, String name) async {
    return await request<Unit>(() async {
      Response res = await dio.post("/user/register", queryParameters: {
        "email": email,
        "name": name,
        "password": password,
        "password_confirmation": confirm
      });
      // ignore: unused_local_variable
      UserDataModel model = UserDataModel.fromJson(res.data);
      return unit;
    });
  }
}
