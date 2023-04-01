import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/home/repository/home_repository.dart';
import 'package:salem_package/models/failure.dart';

import '../entities/product/product_entity.dart';

@lazySingleton
class GetProductByIdUseCase {
  HomeRepository repository;

  GetProductByIdUseCase(this.repository);

  Future<Either<Failure, ProductEntity>> call(int id) async {
    return await repository.getProductById(id);
  }
}
