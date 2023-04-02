part of 'get_cart_items_bloc.dart';

@freezed
class GetCartItemsEvent with _$GetCartItemsEvent {
  const factory GetCartItemsEvent.started() = _Started;

  const factory GetCartItemsEvent.getCartItems() = GetCartItems;
}
