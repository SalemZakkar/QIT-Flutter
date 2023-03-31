// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:qit_flutter/data/auth/repository/auth_repository.dart' as _i10;
import 'package:qit_flutter/data/auth/source/local/local_data_source.dart'
    as _i6;
import 'package:qit_flutter/data/auth/source/remote/auth_remote.dart' as _i7;
import 'package:qit_flutter/data/auth/source/remote/auth_remote_impl.dart'
    as _i8;
import 'package:qit_flutter/domain/auth/repository/auth_repository.dart' as _i9;
import 'package:qit_flutter/domain/auth/usecases/sign_in_from_device_use_case.dart'
    as _i11;
import 'package:qit_flutter/domain/auth/usecases/sign_in_usecase.dart' as _i12;
import 'package:qit_flutter/domain/auth/usecases/sign_out_use_case.dart'
    as _i13;
import 'package:qit_flutter/domain/auth/usecases/sign_up_usecase.dart' as _i14;
import 'package:qit_flutter/injectable_module.dart' as _i19;
import 'package:qit_flutter/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart'
    as _i16;
import 'package:qit_flutter/presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart'
    as _i18;
import 'package:qit_flutter/presentation/core/blocs/auth_bloc/auth_bloc.dart'
    as _i15;
import 'package:qit_flutter/presentation/core/routes.dart' as _i3;
import 'package:qit_flutter/presentation/settings/blocs/sign_out_bloc/sign_out_bloc.dart'
    as _i17;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.singleton<_i3.ApplicationRouter>(_i3.ApplicationRouter());
  gh.lazySingleton<_i4.Dio>(() => injectableModule.dioInstance);
  await gh.lazySingletonAsync<_i5.SharedPreferences>(
    () => injectableModule.sharedPref,
    preResolve: true,
  );
  gh.lazySingleton<_i6.LocalDataSource>(
      () => _i6.LocalDataSource(gh<_i5.SharedPreferences>()));
  gh.lazySingleton<_i7.AuthRemote>(() => _i8.AuthRemoteImpl(
        gh<_i4.Dio>(),
        gh<_i6.LocalDataSource>(),
      ));
  gh.lazySingleton<_i9.AuthRepository>(
      () => _i10.AuthRepositoryImpl(gh<_i7.AuthRemote>()));
  gh.lazySingleton<_i11.SignInFromDeviceUseCase>(
      () => _i11.SignInFromDeviceUseCase(gh<_i9.AuthRepository>()));
  gh.lazySingleton<_i12.SignInUseCase>(
      () => _i12.SignInUseCase(gh<_i9.AuthRepository>()));
  gh.lazySingleton<_i13.SignOutUseCase>(
      () => _i13.SignOutUseCase(gh<_i9.AuthRepository>()));
  gh.lazySingleton<_i14.SignUpUseCase>(
      () => _i14.SignUpUseCase(gh<_i9.AuthRepository>()));
  gh.singleton<_i15.AuthBloc>(
      _i15.AuthBloc(gh<_i11.SignInFromDeviceUseCase>()));
  gh.factory<_i16.SignInBloc>(() => _i16.SignInBloc(
        gh<_i12.SignInUseCase>(),
        gh<_i15.AuthBloc>(),
      ));
  gh.factory<_i17.SignOutBloc>(() => _i17.SignOutBloc(
        gh<_i13.SignOutUseCase>(),
        gh<_i15.AuthBloc>(),
      ));
  gh.factory<_i18.SignUpBloc>(() => _i18.SignUpBloc(
        gh<_i15.AuthBloc>(),
        gh<_i14.SignUpUseCase>(),
      ));
  return getIt;
}

class _$InjectableModule extends _i19.InjectableModule {}
