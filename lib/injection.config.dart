// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:qit_flutter/data/auth/repository/auth_repository.dart' as _i22;
import 'package:qit_flutter/data/auth/source/local/local_data_source.dart'
    as _i16;
import 'package:qit_flutter/data/auth/source/remote/auth_remote.dart' as _i19;
import 'package:qit_flutter/data/auth/source/remote/auth_remote_impl.dart'
    as _i20;
import 'package:qit_flutter/data/cart/repository/repository_impl.dart' as _i24;
import 'package:qit_flutter/data/cart/source/local/cart_local_source.dart'
    as _i4;
import 'package:qit_flutter/data/cart/source/remote/remote_source.dart' as _i17;
import 'package:qit_flutter/data/cart/source/remote/remote_source_impl.dart'
    as _i18;
import 'package:qit_flutter/data/home/repository/home_repo_impl.dart' as _i9;
import 'package:qit_flutter/data/home/source/remote/home_remote.dart' as _i6;
import 'package:qit_flutter/data/home/source/remote/home_remote_impl.dart'
    as _i7;
import 'package:qit_flutter/domain/auth/repository/auth_repository.dart'
    as _i21;
import 'package:qit_flutter/domain/auth/usecases/first_time_use_case.dart'
    as _i25;
import 'package:qit_flutter/domain/auth/usecases/sign_in_from_device_use_case.dart'
    as _i29;
import 'package:qit_flutter/domain/auth/usecases/sign_in_usecase.dart' as _i30;
import 'package:qit_flutter/domain/auth/usecases/sign_out_use_case.dart'
    as _i31;
import 'package:qit_flutter/domain/auth/usecases/sign_up_usecase.dart' as _i32;
import 'package:qit_flutter/domain/cart/repository/cart_repository.dart'
    as _i23;
import 'package:qit_flutter/domain/cart/usecase/add_to_cart.dart' as _i33;
import 'package:qit_flutter/domain/cart/usecase/get_cart_data.dart' as _i26;
import 'package:qit_flutter/domain/cart/usecase/remove_from_cart.dart' as _i28;
import 'package:qit_flutter/domain/home/repository/home_repository.dart' as _i8;
import 'package:qit_flutter/domain/home/use_cases/get_product_by_id_use_case.dart'
    as _i11;
import 'package:qit_flutter/domain/home/use_cases/get_product_list_by_search_use_case.dart'
    as _i12;
import 'package:qit_flutter/domain/home/use_cases/get_product_list_use_case.dart'
    as _i13;
import 'package:qit_flutter/injectable_module.dart' as _i41;
import 'package:qit_flutter/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart'
    as _i37;
import 'package:qit_flutter/presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart'
    as _i39;
import 'package:qit_flutter/presentation/cart/blocs/get_cart_items/get_cart_items_bloc.dart'
    as _i35;
import 'package:qit_flutter/presentation/cart/blocs/remove_cart_item/remove_cart_items_bloc.dart'
    as _i36;
import 'package:qit_flutter/presentation/core/blocs/auth_bloc/auth_bloc.dart'
    as _i34;
import 'package:qit_flutter/presentation/core/routes.dart' as _i3;
import 'package:qit_flutter/presentation/home/blocs/add_to_cart_bloc/add_to_cart_bloc.dart'
    as _i40;
import 'package:qit_flutter/presentation/home/blocs/get_product_bloc/get_product_bloc.dart'
    as _i27;
import 'package:qit_flutter/presentation/home/blocs/get_product_by_search_bloc/get_products_by_search_bloc.dart'
    as _i15;
import 'package:qit_flutter/presentation/home/blocs/get_products_bloc/get_products_bloc.dart'
    as _i14;
import 'package:qit_flutter/presentation/settings/blocs/sign_out_bloc/sign_out_bloc.dart'
    as _i38;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

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
  gh.lazySingleton<_i4.CartLocalSource>(() => _i4.CartLocalSource());
  gh.lazySingleton<_i5.Dio>(() => injectableModule.dioInstance);
  gh.lazySingleton<_i6.HomeRemote>(() => _i7.HomeRemoteImpl(gh<_i5.Dio>()));
  gh.lazySingleton<_i8.HomeRepository>(
      () => _i9.HomeRepoImpl(gh<_i6.HomeRemote>()));
  await gh.lazySingletonAsync<_i10.SharedPreferences>(
    () => injectableModule.sharedPref,
    preResolve: true,
  );
  gh.lazySingleton<_i11.GetProductByIdUseCase>(
      () => _i11.GetProductByIdUseCase(gh<_i8.HomeRepository>()));
  gh.lazySingleton<_i12.GetProductListSearchUseCase>(
      () => _i12.GetProductListSearchUseCase(gh<_i8.HomeRepository>()));
  gh.lazySingleton<_i13.GetProductListUseCase>(
      () => _i13.GetProductListUseCase(gh<_i8.HomeRepository>()));
  gh.factory<_i14.GetProductsBloc>(
      () => _i14.GetProductsBloc(gh<_i13.GetProductListUseCase>()));
  gh.factory<_i15.GetProductsBySearchBloc>(() =>
      _i15.GetProductsBySearchBloc(gh<_i12.GetProductListSearchUseCase>()));
  gh.lazySingleton<_i16.LocalDataSource>(
      () => _i16.LocalDataSource(gh<_i10.SharedPreferences>()));
  gh.lazySingleton<_i17.RemoteSource>(() => _i18.RemoteSourceImpl(
        gh<_i5.Dio>(),
        gh<_i16.LocalDataSource>(),
        gh<_i4.CartLocalSource>(),
      ));
  gh.lazySingleton<_i19.AuthRemote>(() => _i20.AuthRemoteImpl(
        gh<_i5.Dio>(),
        gh<_i16.LocalDataSource>(),
      ));
  gh.lazySingleton<_i21.AuthRepository>(() => _i22.AuthRepositoryImpl(
        gh<_i19.AuthRemote>(),
        gh<_i16.LocalDataSource>(),
      ));
  gh.lazySingleton<_i23.CartRepository>(
      () => _i24.CartRepositoryImpl(gh<_i17.RemoteSource>()));
  gh.lazySingleton<_i25.FirstTimeUseCase>(
      () => _i25.FirstTimeUseCase(gh<_i21.AuthRepository>()));
  gh.lazySingleton<_i26.GetCartItemsUseCase>(
      () => _i26.GetCartItemsUseCase(gh<_i23.CartRepository>()));
  gh.factory<_i27.GetProductBloc>(
      () => _i27.GetProductBloc(gh<_i11.GetProductByIdUseCase>()));
  gh.lazySingleton<_i28.RemoveFromCartUseCase>(
      () => _i28.RemoveFromCartUseCase(gh<_i23.CartRepository>()));
  gh.lazySingleton<_i29.SignInFromDeviceUseCase>(
      () => _i29.SignInFromDeviceUseCase(gh<_i21.AuthRepository>()));
  gh.lazySingleton<_i30.SignInUseCase>(
      () => _i30.SignInUseCase(gh<_i21.AuthRepository>()));
  gh.lazySingleton<_i31.SignOutUseCase>(
      () => _i31.SignOutUseCase(gh<_i21.AuthRepository>()));
  gh.lazySingleton<_i32.SignUpUseCase>(
      () => _i32.SignUpUseCase(gh<_i21.AuthRepository>()));
  gh.lazySingleton<_i33.AddToCartUseCase>(
      () => _i33.AddToCartUseCase(gh<_i23.CartRepository>()));
  gh.singleton<_i34.AuthBloc>(_i34.AuthBloc(
    gh<_i29.SignInFromDeviceUseCase>(),
    gh<_i25.FirstTimeUseCase>(),
  ));
  gh.lazySingleton<_i35.GetCartItemsBloc>(
      () => _i35.GetCartItemsBloc(gh<_i26.GetCartItemsUseCase>()));
  gh.factory<_i36.RemoveCartItemsBloc>(
      () => _i36.RemoveCartItemsBloc(gh<_i28.RemoveFromCartUseCase>()));
  gh.factory<_i37.SignInBloc>(() => _i37.SignInBloc(
        gh<_i30.SignInUseCase>(),
        gh<_i34.AuthBloc>(),
      ));
  gh.factory<_i38.SignOutBloc>(() => _i38.SignOutBloc(
        gh<_i31.SignOutUseCase>(),
        gh<_i34.AuthBloc>(),
      ));
  gh.factory<_i39.SignUpBloc>(() => _i39.SignUpBloc(
        gh<_i34.AuthBloc>(),
        gh<_i32.SignUpUseCase>(),
      ));
  gh.factory<_i40.AddToCartBloc>(
      () => _i40.AddToCartBloc(gh<_i33.AddToCartUseCase>()));
  return getIt;
}

class _$InjectableModule extends _i41.InjectableModule {}
