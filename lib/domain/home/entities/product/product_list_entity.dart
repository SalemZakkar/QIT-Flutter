import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qit_flutter/domain/home/entities/product/product_entity.dart';

part 'product_list_entity.freezed.dart';

@freezed
class ProductListEntity with _$ProductListEntity {
  const factory ProductListEntity({
    required List<ProductEntity> data,
    required Meta meta,
  }) = _ProductListEntity;
}

@freezed
class Links with _$Links {
  const factory Links({
    required String first,
    required String last,
    required String prev,
    required String next,
  }) = _Links;
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    required int total,
  }) = _Meta;
}

@freezed
class Link with _$Link {
  const factory Link({
    required String url,
    required String label,
    required bool active,
  }) = _Link;
}
