import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/home/repository/home_repository.dart';
import 'package:salem_package/models/failure.dart';

import '../entities/product/product_list_entity.dart';

@lazySingleton
class GetProductListUseCase {
  HomeRepository repository;

  GetProductListUseCase(this.repository);

  Future<Either<Failure, ProductListEntity>> call(int perPage, int page) async {
    return await repository.getProducts(perPage, page);
  }
}
