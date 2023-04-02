import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:salem_package/models/failure.dart';

import '../repository/cart_repository.dart';

@lazySingleton
class RemoveFromCartUseCase {
  CartRepository cartRepository;

  RemoveFromCartUseCase(this.cartRepository);

  Future<Either<Failure, Unit>> call(int id) async {
    return cartRepository.remove(id);
  }
}
