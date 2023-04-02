import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/cart/entity/cart_items.dart';
import 'package:salem_package/models/failure.dart';

import '../repository/cart_repository.dart';

@lazySingleton
class GetCartItemsUseCase {
  CartRepository cartRepository;

  GetCartItemsUseCase(this.cartRepository);

  Future<Either<Failure, CartItems>> call() async {
    return cartRepository.getProducts();
  }
}
