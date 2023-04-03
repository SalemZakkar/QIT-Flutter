// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartItems {
  List<ProductCart> get data => throw _privateConstructorUsedError;

  String get total => throw _privateConstructorUsedError;

  String get currency => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartItemsCopyWith<CartItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemsCopyWith<$Res> {
  factory $CartItemsCopyWith(CartItems value, $Res Function(CartItems) then) =
      _$CartItemsCopyWithImpl<$Res, CartItems>;

  @useResult
  $Res call({List<ProductCart> data, String total, String currency});
}

/// @nodoc
class _$CartItemsCopyWithImpl<$Res, $Val extends CartItems>
    implements $CartItemsCopyWith<$Res> {
  _$CartItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductCart>,
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
abstract class _$$_CartItemsCopyWith<$Res> implements $CartItemsCopyWith<$Res> {
  factory _$$_CartItemsCopyWith(
          _$_CartItems value, $Res Function(_$_CartItems) then) =
      __$$_CartItemsCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({List<ProductCart> data, String total, String currency});
}

/// @nodoc
class __$$_CartItemsCopyWithImpl<$Res>
    extends _$CartItemsCopyWithImpl<$Res, _$_CartItems>
    implements _$$_CartItemsCopyWith<$Res> {
  __$$_CartItemsCopyWithImpl(
      _$_CartItems _value, $Res Function(_$_CartItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = null,
    Object? currency = null,
  }) {
    return _then(_$_CartItems(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductCart>,
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

class _$_CartItems implements _CartItems {
  const _$_CartItems(
      {required final List<ProductCart> data,
      required this.total,
      required this.currency})
      : _data = data;

  final List<ProductCart> _data;

  @override
  List<ProductCart> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String total;
  @override
  final String currency;

  @override
  String toString() {
    return 'CartItems(data: $data, total: $total, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartItems &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), total, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartItemsCopyWith<_$_CartItems> get copyWith =>
      __$$_CartItemsCopyWithImpl<_$_CartItems>(this, _$identity);
}

abstract class _CartItems implements CartItems {
  const factory _CartItems(
      {required final List<ProductCart> data,
      required final String total,
      required final String currency}) = _$_CartItems;

  @override
  List<ProductCart> get data;

  @override
  String get total;

  @override
  String get currency;

  @override
  @JsonKey(ignore: true)
  _$$_CartItemsCopyWith<_$_CartItems> get copyWith =>
      throw _privateConstructorUsedError;
}
