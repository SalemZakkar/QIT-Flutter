// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:qit_flutter/data/auth/repository/auth_repository.dart' as _i7;
import 'package:qit_flutter/data/auth/source/remote/auth_remote.dart' as _i4;
import 'package:qit_flutter/data/auth/source/remote/auth_remote_impl.dart'
    as _i5;
import 'package:qit_flutter/domain/auth/repository/auth_repository.dart' as _i6;
import 'package:qit_flutter/domain/auth/usecases/sign_up_usecase.dart' as _i8;
import 'package:qit_flutter/injectable_module.dart' as _i10;
import 'package:qit_flutter/presentation/auth/signup/bloc/sign_up_bloc/sign_up_bloc.dart'
    as _i9;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Dio>(() => injectableModule.dioInstance);
  gh.lazySingleton<_i4.AuthRemote>(() => _i5.AuthRemoteImpl(gh<_i3.Dio>()));
  gh.lazySingleton<_i6.AuthRepository>(
      () => _i7.AuthRepositoryImpl(gh<_i4.AuthRemote>()));
  gh.lazySingleton<_i8.SignUpUseCase>(
      () => _i8.SignUpUseCase(gh<_i6.AuthRepository>()));
  gh.factory<_i9.SignUpBloc>(() => _i9.SignUpBloc(gh<_i8.SignUpUseCase>()));
  return getIt;
}

class _$InjectableModule extends _i10.InjectableModule {}
