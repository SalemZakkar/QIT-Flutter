// To parse this JSON data, do
//
//     final productListModel = productListModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qit_flutter/data/home/models/product_model/product_model.dart';

import '../../../../domain/home/entities/product/product_list_entity.dart';

part 'product_list_model.freezed.dart';
part 'product_list_model.g.dart';

ProductListModel productListModelFromJson(String str) =>
    ProductListModel.fromJson(json.decode(str));

String productListModelToJson(ProductListModel data) =>
    json.encode(data.toJson());

@freezed
class ProductListModel with _$ProductListModel {
  const factory ProductListModel({
    required List<ProductModel> data,
    required MetaModel meta,
  }) = _ProductListModel;

  factory ProductListModel.fromJson(Map<String, dynamic> json) =>
      _$ProductListModelFromJson(json);
}

extension on ProductListModel {}

@freezed
class LinksModel with _$LinksModel {
  const factory LinksModel({
    required String first,
    required String last,
    required String prev,
    required String next,
  }) = _LinksModel;

  factory LinksModel.fromJson(Map<String, dynamic> json) =>
      _$LinksModelFromJson(json);
}

@freezed
class MetaModel with _$MetaModel {
  const factory MetaModel({
    required int total,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}

@freezed
class LinkModel with _$LinkModel {
  const factory LinkModel({
    required String url,
    required String label,
    required bool active,
  }) = _LinkModel;

  factory LinkModel.fromJson(Map<String, dynamic> json) =>
      _$LinkModelFromJson(json);
}

extension LinkConvert on LinkModel {
  Link toDomain() => Link(url: url, label: label, active: active);
}

extension MetaConvert on MetaModel {
  Meta toDomain() => Meta(total: total);
}

extension LinksConvert on LinksModel {
  Links toDomain() => Links(first: first, last: last, prev: prev, next: next);
}

extension ProductListConvert on ProductListModel {
  ProductListEntity toDomain() => ProductListEntity(
      data: data.map((ProductModel e) => e.toDomain()).toList(),
      meta: meta.toDomain());
}
