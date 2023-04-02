import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/data/auth/models/user_data/user_data_model.dart';
import 'package:qit_flutter/data/auth/source/remote/auth_remote.dart';
import 'package:qit_flutter/data/cart/source/local/cart_local_source.dart';
import 'package:qit_flutter/data/core/base_repository/base_repository.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/models/failure.dart';

import '../../../../domain/auth/entites/user_data_entity/user_data.dart';
import '../local/local_data_source.dart';

@LazySingleton(as: AuthRemote)
class AuthRemoteImpl extends AuthRemote with BaseRepository {
  final Dio dio;
  final LocalDataSource localDataSource;

  AuthRemoteImpl(this.dio, this.localDataSource);

  @override
  Future<Either<Failure, UserData>> signUp(
      String email, String password, String confirm, String name) async {
    return await request<UserData>(() async {
      Response res = await dio.post("/user/register", queryParameters: {
        "email": email,
        "name": name,
        "password": password,
        "password_confirmation": confirm
      });
      UserDataModel model = UserDataModel.fromJson(res.data);
      localDataSource.logIn(email, password, model.token);
      return model.toDomain();
    });
  }

  @override
  Future<Either<Failure, UserData>> signIn(
      String email, String password) async {
    return await request<UserData>(() async {
      Response res = await dio.post("/user/login",
          queryParameters: {"email": email, "password": password});
      UserDataModel model = UserDataModel.fromJson(res.data);
      localDataSource.logIn(email, password, model.token);
      return model.toDomain();
    });
  }

  @override
  Future<Either<Failure, UserData>> signInFromDevice() async {
    bool loggedIn = localDataSource.getLoggedIn;
    if (!loggedIn) {
      return left(const Failure(type: FailureType.unAuth));
    }
    String email = localDataSource.email ?? "";
    String password = localDataSource.password ?? "";
    return await request<UserData>(() async {
      Response res = await dio.post("/user/login",
          queryParameters: {"email": email, "password": password});
      UserDataModel model = UserDataModel.fromJson(res.data);
      localDataSource.logIn(email, password, model.token);
      return model.toDomain();
    });
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    return request<Unit>(() async {
      await dio.post("/user/logout",
          options: Options(headers: {
            HttpHeaders.authorizationHeader: "Bearer ${localDataSource.token}"
          }));
      localDataSource.logout();
      CartLocalSource().clear();
      return unit;
    });
  }
}
