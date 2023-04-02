import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/data/cart/source/remote/remote_source.dart';
import 'package:qit_flutter/domain/cart/entity/cart_items.dart';
import 'package:qit_flutter/domain/cart/repository/cart_repository.dart';
import 'package:qit_flutter/domain/home/entities/product/product_entity.dart';
import 'package:salem_package/models/failure.dart';

@LazySingleton(as: CartRepository)
class CartRepositoryImpl extends CartRepository {
  RemoteSource remoteSource;

  CartRepositoryImpl(this.remoteSource);

  @override
  Future<Either<Failure, CartItems>> getProducts() {
    return remoteSource.getProducts();
  }

  @override
  Future<Either<Failure, Unit>> remove(int id) {
    return remoteSource.remove(id);
  }

  @override
  Future<Either<Failure, Unit>> addToCart(ProductEntity entity, int quantity) {
    return remoteSource.addToCart(entity, quantity);
  }
}
