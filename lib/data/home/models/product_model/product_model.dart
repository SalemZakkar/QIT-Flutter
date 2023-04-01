// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qit_flutter/domain/home/entities/product/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    required String title,
    required String description,
    required PriceModel price,
    required ImageModel image,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required int id,
    @JsonKey(name: "file_name") required String fileName,
    required ConversionsModel conversions,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}

@freezed
class ConversionsModel with _$ConversionsModel {
  const factory ConversionsModel({
    required String small,
    required String medium,
    required String large,
    @JsonKey(name: "default") required String conversionsDefault,
  }) = _ConversionsModel;

  factory ConversionsModel.fromJson(Map<String, dynamic> json) =>
      _$ConversionsModelFromJson(json);
}

@freezed
class PriceModel with _$PriceModel {
  const factory PriceModel({
    required String value,
    required String currency,
    required String formatted,
  }) = _PriceModel;

  factory PriceModel.fromJson(Map<String, dynamic> json) =>
      _$PriceModelFromJson(json);
}

extension PriceConvert on PriceModel {
  Price toDomain() =>
      Price(value: value, currency: currency, formatted: formatted);
}

extension ConversionsConvert on ConversionsModel {
  Conversions toDomain() => Conversions(
      small: small, medium: medium, large: large, def: conversionsDefault);
}

extension ImageConvert on ImageModel {
  Image toDomain() =>
      Image(id: id, fileName: fileName, conversions: conversions.toDomain());
}

extension ProductConvert on ProductModel {
  ProductEntity toDomain() => ProductEntity(
      id: id ?? 0,
      title: title,
      description: description,
      price: price.toDomain(),
      image: image.toDomain());
}
