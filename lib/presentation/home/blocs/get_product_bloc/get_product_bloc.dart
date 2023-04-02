import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/home/entities/product/product_entity.dart';
import 'package:salem_package/bloc/base_state.dart';

import '../../../../domain/home/use_cases/get_product_by_id_use_case.dart';

part 'get_product_bloc.freezed.dart';
part 'get_product_event.dart';

@injectable
class GetProductBloc extends Bloc<GetProductEvent, BaseState<ProductEntity>> {
  GetProductByIdUseCase getProductByIdUseCase;

  GetProductBloc(this.getProductByIdUseCase) : super(const BaseState()) {
    on<GetProductEvent>((event, emit) {});
    on<GetProductById>((event, emit) async {
      emit(state.setProgress());
      Either res = await getProductByIdUseCase.call(event.id);
      res.fold(
          (l) => emit(state.setFailure(l)), (r) => emit(state.setSuccess(r)));
    });
  }
}
