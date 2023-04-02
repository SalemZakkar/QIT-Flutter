import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:salem_package/models/failure.dart';

import '../../home/entities/product/product_entity.dart';
import '../repository/cart_repository.dart';

@lazySingleton
class AddToCartUseCase {
  CartRepository cartRepository;

  AddToCartUseCase(this.cartRepository);

  Future<Either<Failure, Unit>> call(ProductEntity entity, int quantity) async {
    return cartRepository.addToCart(entity, quantity);
  }
}
