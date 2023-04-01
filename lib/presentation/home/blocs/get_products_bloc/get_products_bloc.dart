import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/home/entities/product/product_list_entity.dart';
import 'package:salem_package/bloc/base_state.dart';

import '../../../../domain/home/use_cases/get_product_list_use_case.dart';

part 'get_products_bloc.freezed.dart';
part 'get_products_event.dart';

@injectable
class GetProductsBloc
    extends Bloc<GetProductsEvent, BaseState<ProductListEntity>> {
  GetProductListUseCase useCase;

  GetProductsBloc(this.useCase) : super(const BaseState()) {
    on<GetProductsEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<GetProductsListEvent>((event, emit) async {
      emit(state.setProgress());
      Either res = await useCase.call(event.n, event.p);
      res.fold(
          (l) => emit(state.setFailure(l)), (r) => emit(state.setSuccess(r)));
    });
  }
}
