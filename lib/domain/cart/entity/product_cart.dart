import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_cart.freezed.dart';

@freezed
class ProductCart with _$ProductCart {
  const factory ProductCart(
      {required String image,
      required String title,
      required int id,
      required int count,
      required String total,
      required String currency}) = _ProductCart;
}
