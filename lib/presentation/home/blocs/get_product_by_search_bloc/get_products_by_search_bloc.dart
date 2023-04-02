import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/home/entities/product/product_list_entity.dart';
import 'package:salem_package/bloc/base_state.dart';

import '../../../../domain/home/use_cases/get_product_list_by_search_use_case.dart';

part 'get_products_by_search_bloc.freezed.dart';
part 'get_products_by_search_event.dart';

@injectable
class GetProductsBySearchBloc
    extends Bloc<GetProductsBySearchEvent, BaseState<ProductListEntity>> {
  GetProductListSearchUseCase useCase;

  GetProductsBySearchBloc(this.useCase) : super(const BaseState()) {
    on<GetProductsBySearchEvent>((event, emit) {});
    on<GetProductsBySeacrh>((event, emit) async {
      emit(state.setProgress());
      Either res = await useCase.call(event.perPage, event.page, event.keyword);
      res.fold(
          (l) => emit(state.setFailure(l)), (r) => emit(state.setSuccess(r)));
    });
  }
}
