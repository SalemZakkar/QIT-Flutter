// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductCart {
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCartCopyWith<ProductCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCartCopyWith<$Res> {
  factory $ProductCartCopyWith(
          ProductCart value, $Res Function(ProductCart) then) =
      _$ProductCartCopyWithImpl<$Res, ProductCart>;
  @useResult
  $Res call(
      {String image,
      String title,
      int id,
      int count,
      String total,
      String currency});
}

/// @nodoc
class _$ProductCartCopyWithImpl<$Res, $Val extends ProductCart>
    implements $ProductCartCopyWith<$Res> {
  _$ProductCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? title = null,
    Object? id = null,
    Object? count = null,
    Object? total = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCartCopyWith<$Res>
    implements $ProductCartCopyWith<$Res> {
  factory _$$_ProductCartCopyWith(
          _$_ProductCart value, $Res Function(_$_ProductCart) then) =
      __$$_ProductCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String image,
      String title,
      int id,
      int count,
      String total,
      String currency});
}

/// @nodoc
class __$$_ProductCartCopyWithImpl<$Res>
    extends _$ProductCartCopyWithImpl<$Res, _$_ProductCart>
    implements _$$_ProductCartCopyWith<$Res> {
  __$$_ProductCartCopyWithImpl(
      _$_ProductCart _value, $Res Function(_$_ProductCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? title = null,
    Object? id = null,
    Object? count = null,
    Object? total = null,
    Object? currency = null,
  }) {
    return _then(_$_ProductCart(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProductCart implements _ProductCart {
  const _$_ProductCart(
      {required this.image,
      required this.title,
      required this.id,
      required this.count,
      required this.total,
      required this.currency});

  @override
  final String image;
  @override
  final String title;
  @override
  final int id;
  @override
  final int count;
  @override
  final String total;
  @override
  final String currency;

  @override
  String toString() {
    return 'ProductCart(image: $image, title: $title, id: $id, count: $count, total: $total, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCart &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, image, title, id, count, total, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCartCopyWith<_$_ProductCart> get copyWith =>
      __$$_ProductCartCopyWithImpl<_$_ProductCart>(this, _$identity);
}

abstract class _ProductCart implements ProductCart {
  const factory _ProductCart(
      {required final String image,
      required final String title,
      required final int id,
      required final int count,
      required final String total,
      required final String currency}) = _$_ProductCart;

  @override
  String get image;
  @override
  String get title;
  @override
  int get id;
  @override
  int get count;
  @override
  String get total;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCartCopyWith<_$_ProductCart> get copyWith =>
      throw _privateConstructorUsedError;
}
