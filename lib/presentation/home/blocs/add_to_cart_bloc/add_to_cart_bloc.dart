import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/home/entities/product/product_entity.dart';
import 'package:salem_package/bloc/base_state.dart';

import '../../../../domain/cart/usecase/add_to_cart.dart';

part 'add_to_cart_bloc.freezed.dart';
part 'add_to_cart_event.dart';

@injectable
class AddToCartBloc extends Bloc<AddToCartEvent, BaseState> {
  AddToCartUseCase addToCartUseCase;

  AddToCartBloc(this.addToCartUseCase) : super(const BaseState()) {
    on<AddToCartEvent>((event, emit) {
    });
    on<_AddToCart>((event, emit) async {
      emit(state.setProgress());
      Either res = await addToCartUseCase.call(event.entity, event.quantity);
      res.fold(
          (l) => emit(state.setFailure(l)), (r) => emit(state.setSuccess(r)));
    });
  }
}
