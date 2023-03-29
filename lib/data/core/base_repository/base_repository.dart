import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/models/failure.dart';

class BaseRepository {
  Future<Either<Failure, T>> request<T>(var body) async {
    try {
      return right(await body());
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectionTimeout ||
          e.type == DioErrorType.sendTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.connectionError ||
          e.error is SocketException) {
        return left(const Failure(type: FailureType.networkError));
      } else if (e.response?.statusCode == 403) {
        return left(const Failure(type: FailureType.unAuthorized));
      } else if (e.response?.statusCode == 404) {
        return left(const Failure(type: FailureType.notFound));
      } else if (e.response?.statusCode == 400 ||
          e.response?.statusCode == 422) {
        return left(const Failure(type: FailureType.invalidArguments));
      } else if (e.response?.statusCode == 500) {
        return left(const Failure(type: FailureType.serverError));
      } else {
        return left(const Failure(type: FailureType.serverError));
      }
    } on SocketException {
      return left(const Failure(type: FailureType.networkError));
    }
  }
}
