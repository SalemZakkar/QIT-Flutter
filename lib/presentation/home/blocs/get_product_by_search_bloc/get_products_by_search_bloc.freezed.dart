// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_products_by_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetProductsBySearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int perPage, int page, dynamic keyword)
        getProductsBySearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int perPage, int page, dynamic keyword)?
        getProductsBySearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int perPage, int page, dynamic keyword)?
        getProductsBySearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsBySeacrh value) getProductsBySearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsBySeacrh value)? getProductsBySearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsBySeacrh value)? getProductsBySearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductsBySearchEventCopyWith<$Res> {
  factory $GetProductsBySearchEventCopyWith(GetProductsBySearchEvent value,
          $Res Function(GetProductsBySearchEvent) then) =
      _$GetProductsBySearchEventCopyWithImpl<$Res, GetProductsBySearchEvent>;
}

/// @nodoc
class _$GetProductsBySearchEventCopyWithImpl<$Res,
        $Val extends GetProductsBySearchEvent>
    implements $GetProductsBySearchEventCopyWith<$Res> {
  _$GetProductsBySearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$GetProductsBySearchEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'GetProductsBySearchEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int perPage, int page, dynamic keyword)
        getProductsBySearch,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int perPage, int page, dynamic keyword)?
        getProductsBySearch,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int perPage, int page, dynamic keyword)?
        getProductsBySearch,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsBySeacrh value) getProductsBySearch,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsBySeacrh value)? getProductsBySearch,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsBySeacrh value)? getProductsBySearch,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GetProductsBySearchEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$GetProductsBySeacrhCopyWith<$Res> {
  factory _$$GetProductsBySeacrhCopyWith(_$GetProductsBySeacrh value,
          $Res Function(_$GetProductsBySeacrh) then) =
      __$$GetProductsBySeacrhCopyWithImpl<$Res>;
  @useResult
  $Res call({int perPage, int page, dynamic keyword});
}

/// @nodoc
class __$$GetProductsBySeacrhCopyWithImpl<$Res>
    extends _$GetProductsBySearchEventCopyWithImpl<$Res, _$GetProductsBySeacrh>
    implements _$$GetProductsBySeacrhCopyWith<$Res> {
  __$$GetProductsBySeacrhCopyWithImpl(
      _$GetProductsBySeacrh _value, $Res Function(_$GetProductsBySeacrh) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perPage = null,
    Object? page = null,
    Object? keyword = freezed,
  }) {
    return _then(_$GetProductsBySeacrh(
      null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == keyword ? _value.keyword! : keyword,
    ));
  }
}

/// @nodoc

class _$GetProductsBySeacrh implements GetProductsBySeacrh {
  const _$GetProductsBySeacrh(this.perPage, this.page, this.keyword);

  @override
  final int perPage;
  @override
  final int page;
  @override
  final dynamic keyword;

  @override
  String toString() {
    return 'GetProductsBySearchEvent.getProductsBySearch(perPage: $perPage, page: $page, keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsBySeacrh &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other.keyword, keyword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, perPage, page, const DeepCollectionEquality().hash(keyword));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsBySeacrhCopyWith<_$GetProductsBySeacrh> get copyWith =>
      __$$GetProductsBySeacrhCopyWithImpl<_$GetProductsBySeacrh>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int perPage, int page, dynamic keyword)
        getProductsBySearch,
  }) {
    return getProductsBySearch(perPage, page, keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int perPage, int page, dynamic keyword)?
        getProductsBySearch,
  }) {
    return getProductsBySearch?.call(perPage, page, keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int perPage, int page, dynamic keyword)?
        getProductsBySearch,
    required TResult orElse(),
  }) {
    if (getProductsBySearch != null) {
      return getProductsBySearch(perPage, page, keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsBySeacrh value) getProductsBySearch,
  }) {
    return getProductsBySearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsBySeacrh value)? getProductsBySearch,
  }) {
    return getProductsBySearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsBySeacrh value)? getProductsBySearch,
    required TResult orElse(),
  }) {
    if (getProductsBySearch != null) {
      return getProductsBySearch(this);
    }
    return orElse();
  }
}

abstract class GetProductsBySeacrh implements GetProductsBySearchEvent {
  const factory GetProductsBySeacrh(
          final int perPage, final int page, final dynamic keyword) =
      _$GetProductsBySeacrh;

  int get perPage;
  int get page;
  dynamic get keyword;
  @JsonKey(ignore: true)
  _$$GetProductsBySeacrhCopyWith<_$GetProductsBySeacrh> get copyWith =>
      throw _privateConstructorUsedError;
}
