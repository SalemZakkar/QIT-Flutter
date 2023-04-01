part of 'get_products_by_search_bloc.dart';

@freezed
class GetProductsBySearchEvent with _$GetProductsBySearchEvent {
  const factory GetProductsBySearchEvent.started() = _Started;

  const factory GetProductsBySearchEvent.getProductsBySearch(
      int perPage, int page, keyword) = GetProductsBySeacrh;
}
