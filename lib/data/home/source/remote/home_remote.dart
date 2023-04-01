import 'package:dartz/dartz.dart';
import 'package:qit_flutter/domain/home/entities/product/product_entity.dart';
import 'package:qit_flutter/domain/home/entities/product/product_list_entity.dart';
import 'package:salem_package/models/failure.dart';

abstract class HomeRemote {
  Future<Either<Failure, ProductListEntity>> getProducts(int perPage, int page);

  Future<Either<Failure, ProductEntity>> getProductById(int id);

  Future<Either<Failure, ProductListEntity>> getProductBySearch(
      int perPage, int page, keyword);
}
