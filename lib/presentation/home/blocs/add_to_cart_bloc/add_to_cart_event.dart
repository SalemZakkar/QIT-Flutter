part of 'add_to_cart_bloc.dart';

@freezed
class AddToCartEvent with _$AddToCartEvent {
  const factory AddToCartEvent.started() = _Started;

  const factory AddToCartEvent.addToCart(
      {required ProductEntity entity, required int quantity}) = _AddToCart;
}
