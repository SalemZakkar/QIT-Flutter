import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qit_flutter/domain/cart/entity/product_cart.dart';

part 'cart_items.freezed.dart';

@freezed
class CartItems with _$CartItems {
  const factory CartItems(
      {required List<ProductCart> data,
      required String total,
      required String currency}) = _CartItems;
}
