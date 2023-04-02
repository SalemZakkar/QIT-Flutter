import 'package:dartz/dartz.dart';
import 'package:salem_package/models/failure.dart';

import '../../../../domain/cart/entity/cart_items.dart';
import '../../../../domain/home/entities/product/product_entity.dart';

abstract class RemoteSource {
  Future<Either<Failure, Unit>> addToCart(ProductEntity entity, int quantity);

  Future<Either<Failure, Unit>> remove(int id);

  Future<Either<Failure, CartItems>> getProducts();
}
