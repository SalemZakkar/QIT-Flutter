part of 'remove_cart_items_bloc.dart';

@freezed
class RemoveCartItemsEvent with _$RemoveCartItemsEvent {
  const factory RemoveCartItemsEvent.started() = _Started;

  const factory RemoveCartItemsEvent.removeCartItem({required int id}) =
      RemoveCartItem;
}
