import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    required int id,
    required String title,
    required String description,
    required Price price,
    required Image image,
  }) = _ProductEntity;
}

@freezed
class Image with _$Image {
  const factory Image({
    required int id,
    required String fileName,
    required Conversions conversions,
  }) = _Image;
}

@freezed
class Conversions with _$Conversions {
  const factory Conversions({
    required String small,
    required String medium,
    required String large,
    @JsonKey(name: "default") required String def,
  }) = _Conversions;
}

@freezed
class Price with _$Price {
  const factory Price({
    required String value,
    required String currency,
    required String formatted,
  }) = _Price;
}
