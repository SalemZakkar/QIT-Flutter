import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/home/repository/home_repository.dart';
import 'package:salem_package/models/failure.dart';

import '../entities/product/product_list_entity.dart';

@lazySingleton
class GetProductListSearchUseCase {
  HomeRepository repository;

  GetProductListSearchUseCase(this.repository);

  Future<Either<Failure, ProductListEntity>> call(
      int perPage, int page, keyword) async {
    return await repository.getProductBySearch(perPage, page, keyword);
  }
}
