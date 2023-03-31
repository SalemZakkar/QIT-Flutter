import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InjectableModule {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get sharedPref => SharedPreferences.getInstance();
  @lazySingleton
  Dio get dioInstance {
    final dio = Dio(BaseOptions(
      baseUrl: "https://test.qit.company/api",
      connectTimeout: const Duration(milliseconds: 20000),
      receiveTimeout: const Duration(milliseconds: 20000),
      sendTimeout: const Duration(milliseconds: 20000),
      headers: {
        "Accept" : "Application/json"
      }
    ));
    dio.interceptors.add(LogInterceptor(
        error: true,
        responseBody: true,
        requestBody: true,
        requestHeader: true,
        request: true));
    return dio;
  }
}
