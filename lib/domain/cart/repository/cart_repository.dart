import 'package:dartz/dartz.dart';
import 'package:qit_flutter/domain/cart/entity/cart_items.dart';
import 'package:qit_flutter/domain/home/entities/product/product_entity.dart';
import 'package:salem_package/models/failure.dart';

abstract class CartRepository {
  Future<Either<Failure, Unit>> addToCart(ProductEntity entity, int quantity);

  Future<Either<Failure, Unit>> remove(int id);

  Future<Either<Failure, CartItems>> getProducts();
}
