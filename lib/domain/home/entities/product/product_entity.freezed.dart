// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEntity {
  int get id => throw _privateConstructorUsedError;

  String get title => throw _privateConstructorUsedError;

  String get description => throw _privateConstructorUsedError;

  Price get price => throw _privateConstructorUsedError;

  Image get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res, ProductEntity>;

  @useResult
  $Res call(
      {int id, String title, String description, Price price, Image image});

  $PriceCopyWith<$Res> get price;

  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res, $Val extends ProductEntity>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res> get image {
    return $ImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductEntityCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$$_ProductEntityCopyWith(
          _$_ProductEntity value, $Res Function(_$_ProductEntity) then) =
      __$$_ProductEntityCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {int id, String title, String description, Price price, Image image});

  @override
  $PriceCopyWith<$Res> get price;

  @override
  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$_ProductEntityCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res, _$_ProductEntity>
    implements _$$_ProductEntityCopyWith<$Res> {
  __$$_ProductEntityCopyWithImpl(
      _$_ProductEntity _value, $Res Function(_$_ProductEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? image = null,
  }) {
    return _then(_$_ProductEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }
}

/// @nodoc

class _$_ProductEntity implements _ProductEntity {
  const _$_ProductEntity(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.image});

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final Price price;
  @override
  final Image image;

  @override
  String toString() {
    return 'ProductEntity(id: $id, title: $title, description: $description, price: $price, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, price, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      __$$_ProductEntityCopyWithImpl<_$_ProductEntity>(this, _$identity);
}

abstract class _ProductEntity implements ProductEntity {
  const factory _ProductEntity(
      {required final int id,
      required final String title,
      required final String description,
      required final Price price,
      required final Image image}) = _$_ProductEntity;

  @override
  int get id;

  @override
  String get title;

  @override
  String get description;

  @override
  Price get price;

  @override
  Image get image;

  @override
  @JsonKey(ignore: true)
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Image {
  int get id => throw _privateConstructorUsedError;

  String get fileName => throw _privateConstructorUsedError;

  Conversions get conversions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;

  @useResult
  $Res call({int id, String fileName, Conversions conversions});

  $ConversionsCopyWith<$Res> get conversions;
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fileName = null,
    Object? conversions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      conversions: null == conversions
          ? _value.conversions
          : conversions // ignore: cast_nullable_to_non_nullable
              as Conversions,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversionsCopyWith<$Res> get conversions {
    return $ConversionsCopyWith<$Res>(_value.conversions, (value) {
      return _then(_value.copyWith(conversions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$_ImageCopyWith(_$_Image value, $Res Function(_$_Image) then) =
      __$$_ImageCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({int id, String fileName, Conversions conversions});

  @override
  $ConversionsCopyWith<$Res> get conversions;
}

/// @nodoc
class __$$_ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res, _$_Image>
    implements _$$_ImageCopyWith<$Res> {
  __$$_ImageCopyWithImpl(_$_Image _value, $Res Function(_$_Image) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fileName = null,
    Object? conversions = null,
  }) {
    return _then(_$_Image(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      conversions: null == conversions
          ? _value.conversions
          : conversions // ignore: cast_nullable_to_non_nullable
              as Conversions,
    ));
  }
}

/// @nodoc

class _$_Image implements _Image {
  const _$_Image(
      {required this.id, required this.fileName, required this.conversions});

  @override
  final int id;
  @override
  final String fileName;
  @override
  final Conversions conversions;

  @override
  String toString() {
    return 'Image(id: $id, fileName: $fileName, conversions: $conversions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Image &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.conversions, conversions) ||
                other.conversions == conversions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fileName, conversions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      __$$_ImageCopyWithImpl<_$_Image>(this, _$identity);
}

abstract class _Image implements Image {
  const factory _Image(
      {required final int id,
      required final String fileName,
      required final Conversions conversions}) = _$_Image;

  @override
  int get id;

  @override
  String get fileName;

  @override
  Conversions get conversions;

  @override
  @JsonKey(ignore: true)
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Conversions {
  String get small => throw _privateConstructorUsedError;

  String get medium => throw _privateConstructorUsedError;

  String get large => throw _privateConstructorUsedError;

  @JsonKey(name: "default")
  String get def => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversionsCopyWith<Conversions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversionsCopyWith<$Res> {
  factory $ConversionsCopyWith(
          Conversions value, $Res Function(Conversions) then) =
      _$ConversionsCopyWithImpl<$Res, Conversions>;

  @useResult
  $Res call(
      {String small,
      String medium,
      String large,
      @JsonKey(name: "default") String def});
}

/// @nodoc
class _$ConversionsCopyWithImpl<$Res, $Val extends Conversions>
    implements $ConversionsCopyWith<$Res> {
  _$ConversionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
    Object? def = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      def: null == def
          ? _value.def
          : def // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConversionsCopyWith<$Res>
    implements $ConversionsCopyWith<$Res> {
  factory _$$_ConversionsCopyWith(
          _$_Conversions value, $Res Function(_$_Conversions) then) =
      __$$_ConversionsCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String small,
      String medium,
      String large,
      @JsonKey(name: "default") String def});
}

/// @nodoc
class __$$_ConversionsCopyWithImpl<$Res>
    extends _$ConversionsCopyWithImpl<$Res, _$_Conversions>
    implements _$$_ConversionsCopyWith<$Res> {
  __$$_ConversionsCopyWithImpl(
      _$_Conversions _value, $Res Function(_$_Conversions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
    Object? def = null,
  }) {
    return _then(_$_Conversions(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      def: null == def
          ? _value.def
          : def // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Conversions implements _Conversions {
  const _$_Conversions(
      {required this.small,
      required this.medium,
      required this.large,
      @JsonKey(name: "default") required this.def});

  @override
  final String small;
  @override
  final String medium;
  @override
  final String large;
  @override
  @JsonKey(name: "default")
  final String def;

  @override
  String toString() {
    return 'Conversions(small: $small, medium: $medium, large: $large, def: $def)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Conversions &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.def, def) || other.def == def));
  }

  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large, def);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversionsCopyWith<_$_Conversions> get copyWith =>
      __$$_ConversionsCopyWithImpl<_$_Conversions>(this, _$identity);
}

abstract class _Conversions implements Conversions {
  const factory _Conversions(
      {required final String small,
      required final String medium,
      required final String large,
      @JsonKey(name: "default") required final String def}) = _$_Conversions;

  @override
  String get small;

  @override
  String get medium;

  @override
  String get large;

  @override
  @JsonKey(name: "default")
  String get def;

  @override
  @JsonKey(ignore: true)
  _$$_ConversionsCopyWith<_$_Conversions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Price {
  String get value => throw _privateConstructorUsedError;

  String get currency => throw _privateConstructorUsedError;

  String get formatted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;

  @useResult
  $Res call({String value, String currency, String formatted});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? currency = null,
    Object? formatted = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$_PriceCopyWith(_$_Price value, $Res Function(_$_Price) then) =
      __$$_PriceCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String value, String currency, String formatted});
}

/// @nodoc
class __$$_PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res, _$_Price>
    implements _$$_PriceCopyWith<$Res> {
  __$$_PriceCopyWithImpl(_$_Price _value, $Res Function(_$_Price) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? currency = null,
    Object? formatted = null,
  }) {
    return _then(_$_Price(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Price implements _Price {
  const _$_Price(
      {required this.value, required this.currency, required this.formatted});

  @override
  final String value;
  @override
  final String currency;
  @override
  final String formatted;

  @override
  String toString() {
    return 'Price(value: $value, currency: $currency, formatted: $formatted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Price &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, currency, formatted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      __$$_PriceCopyWithImpl<_$_Price>(this, _$identity);
}

abstract class _Price implements Price {
  const factory _Price(
      {required final String value,
      required final String currency,
      required final String formatted}) = _$_Price;

  @override
  String get value;

  @override
  String get currency;

  @override
  String get formatted;

  @override
  @JsonKey(ignore: true)
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      throw _privateConstructorUsedError;
}
