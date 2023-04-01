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
import 'package:qit_flutter/data/auth/repository/auth_repository.dart' as _i19;
import 'package:qit_flutter/data/auth/source/local/local_data_source.dart'
    as _i15;
import 'package:qit_flutter/data/auth/source/remote/auth_remote.dart' as _i16;
import 'package:qit_flutter/data/auth/source/remote/auth_remote_impl.dart'
    as _i17;
import 'package:qit_flutter/data/home/repository/home_repo_impl.dart' as _i8;
import 'package:qit_flutter/data/home/source/remote/home_remote.dart' as _i5;
import 'package:qit_flutter/data/home/source/remote/home_remote_impl.dart'
    as _i6;
import 'package:qit_flutter/domain/auth/repository/auth_repository.dart'
    as _i18;
import 'package:qit_flutter/domain/auth/usecases/first_time_use_case.dart'
    as _i20;
import 'package:qit_flutter/domain/auth/usecases/sign_in_from_device_use_case.dart'
    as _i22;
import 'package:qit_flutter/domain/auth/usecases/sign_in_usecase.dart' as _i23;
import 'package:qit_flutter/domain/auth/usecases/sign_out_use_case.dart'
    as _i24;
import 'package:qit_flutter/domain/auth/usecases/sign_up_usecase.dart' as _i25;
import 'package:qit_flutter/domain/home/repository/home_repository.dart' as _i7;
import 'package:qit_flutter/domain/home/use_cases/get_product_by_id_use_case.dart'
    as _i10;
import 'package:qit_flutter/domain/home/use_cases/get_product_list_by_search_use_case.dart'
    as _i11;
import 'package:qit_flutter/domain/home/use_cases/get_product_list_use_case.dart'
    as _i12;
import 'package:qit_flutter/injectable_module.dart' as _i30;
import 'package:qit_flutter/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart'
    as _i27;
import 'package:qit_flutter/presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart'
    as _i29;
import 'package:qit_flutter/presentation/core/blocs/auth_bloc/auth_bloc.dart'
    as _i26;
import 'package:qit_flutter/presentation/core/routes.dart' as _i3;
import 'package:qit_flutter/presentation/home/blocs/get_product_bloc/get_product_bloc.dart'
    as _i21;
import 'package:qit_flutter/presentation/home/blocs/get_product_by_search_bloc/get_products_by_search_bloc.dart'
    as _i14;
import 'package:qit_flutter/presentation/home/blocs/get_products_bloc/get_products_bloc.dart'
    as _i13;
import 'package:qit_flutter/presentation/settings/blocs/sign_out_bloc/sign_out_bloc.dart'
    as _i28;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

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
  gh.lazySingleton<_i5.HomeRemote>(() => _i6.HomeRemoteImpl(gh<_i4.Dio>()));
  gh.lazySingleton<_i7.HomeRepository>(
      () => _i8.HomeRepoImpl(gh<_i5.HomeRemote>()));
  await gh.lazySingletonAsync<_i9.SharedPreferences>(
    () => injectableModule.sharedPref,
    preResolve: true,
  );
  gh.lazySingleton<_i10.GetProductByIdUseCase>(
      () => _i10.GetProductByIdUseCase(gh<_i7.HomeRepository>()));
  gh.lazySingleton<_i11.GetProductListSearchUseCase>(
      () => _i11.GetProductListSearchUseCase(gh<_i7.HomeRepository>()));
  gh.lazySingleton<_i12.GetProductListUseCase>(
      () => _i12.GetProductListUseCase(gh<_i7.HomeRepository>()));
  gh.factory<_i13.GetProductsBloc>(
      () => _i13.GetProductsBloc(gh<_i12.GetProductListUseCase>()));
  gh.factory<_i14.GetProductsBySearchBloc>(() =>
      _i14.GetProductsBySearchBloc(gh<_i11.GetProductListSearchUseCase>()));
  gh.lazySingleton<_i15.LocalDataSource>(
      () => _i15.LocalDataSource(gh<_i9.SharedPreferences>()));
  gh.lazySingleton<_i16.AuthRemote>(() => _i17.AuthRemoteImpl(
        gh<_i4.Dio>(),
        gh<_i15.LocalDataSource>(),
      ));
  gh.lazySingleton<_i18.AuthRepository>(() => _i19.AuthRepositoryImpl(
        gh<_i16.AuthRemote>(),
        gh<_i15.LocalDataSource>(),
      ));
  gh.lazySingleton<_i20.FirstTimeUseCase>(
      () => _i20.FirstTimeUseCase(gh<_i18.AuthRepository>()));
  gh.factory<_i21.GetProductBloc>(
      () => _i21.GetProductBloc(gh<_i10.GetProductByIdUseCase>()));
  gh.lazySingleton<_i22.SignInFromDeviceUseCase>(
      () => _i22.SignInFromDeviceUseCase(gh<_i18.AuthRepository>()));
  gh.lazySingleton<_i23.SignInUseCase>(
      () => _i23.SignInUseCase(gh<_i18.AuthRepository>()));
  gh.lazySingleton<_i24.SignOutUseCase>(
      () => _i24.SignOutUseCase(gh<_i18.AuthRepository>()));
  gh.lazySingleton<_i25.SignUpUseCase>(
      () => _i25.SignUpUseCase(gh<_i18.AuthRepository>()));
  gh.singleton<_i26.AuthBloc>(_i26.AuthBloc(
    gh<_i22.SignInFromDeviceUseCase>(),
    gh<_i20.FirstTimeUseCase>(),
  ));
  gh.factory<_i27.SignInBloc>(() => _i27.SignInBloc(
        gh<_i23.SignInUseCase>(),
        gh<_i26.AuthBloc>(),
      ));
  gh.factory<_i28.SignOutBloc>(() => _i28.SignOutBloc(
        gh<_i24.SignOutUseCase>(),
        gh<_i26.AuthBloc>(),
      ));
  gh.factory<_i29.SignUpBloc>(() => _i29.SignUpBloc(
        gh<_i26.AuthBloc>(),
        gh<_i25.SignUpUseCase>(),
      ));
  return getIt;
}

class _$InjectableModule extends _i30.InjectableModule {}
