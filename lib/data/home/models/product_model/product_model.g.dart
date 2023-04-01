// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      price: PriceModel.fromJson(json['price'] as Map<String, dynamic>),
      image: ImageModel.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
    };

_$_ImageModel _$$_ImageModelFromJson(Map<String, dynamic> json) =>
    _$_ImageModel(
      id: json['id'] as int,
      fileName: json['file_name'] as String,
      conversions: ConversionsModel.fromJson(
          json['conversions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ImageModelToJson(_$_ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file_name': instance.fileName,
      'conversions': instance.conversions,
    };

_$_ConversionsModel _$$_ConversionsModelFromJson(Map<String, dynamic> json) =>
    _$_ConversionsModel(
      small: json['small'] as String,
      medium: json['medium'] as String,
      large: json['large'] as String,
      conversionsDefault: json['default'] as String,
    );

Map<String, dynamic> _$$_ConversionsModelToJson(_$_ConversionsModel instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
      'default': instance.conversionsDefault,
    };

_$_PriceModel _$$_PriceModelFromJson(Map<String, dynamic> json) =>
    _$_PriceModel(
      value: json['value'] as String,
      currency: json['currency'] as String,
      formatted: json['formatted'] as String,
    );

Map<String, dynamic> _$$_PriceModelToJson(_$_PriceModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'currency': instance.currency,
      'formatted': instance.formatted,
    };
