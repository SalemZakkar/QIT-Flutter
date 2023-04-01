import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/data/home/source/remote/home_remote.dart';
import 'package:qit_flutter/domain/home/entities/product/product_entity.dart';
import 'package:qit_flutter/domain/home/entities/product/product_list_entity.dart';
import 'package:qit_flutter/domain/home/repository/home_repository.dart';
import 'package:salem_package/models/failure.dart';

@LazySingleton(as: HomeRepository)
class HomeRepoImpl extends HomeRepository {
  HomeRemote remote;

  HomeRepoImpl(this.remote);

  @override
  Future<Either<Failure, ProductEntity>> getProductById(int id) {
    return remote.getProductById(id);
  }

  @override
  Future<Either<Failure, ProductListEntity>> getProductBySearch(
      int perPage, int page, keyword) {
    return remote.getProductBySearch(perPage, page, keyword);
  }

  @override
  Future<Either<Failure, ProductListEntity>> getProducts(
      int perPage, int page) {
    return remote.getProducts(perPage, page);
  }
}
