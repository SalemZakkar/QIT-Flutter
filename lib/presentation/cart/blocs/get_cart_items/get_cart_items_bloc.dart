import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/cart/entity/cart_items.dart';
import 'package:salem_package/bloc/base_state.dart';

import '../../../../domain/cart/usecase/get_cart_data.dart';

part 'get_cart_items_bloc.freezed.dart';
part 'get_cart_items_event.dart';

@lazySingleton
class GetCartItemsBloc extends Bloc<GetCartItemsEvent, BaseState<CartItems>> {
  GetCartItemsUseCase getCartItemsUseCase;

  GetCartItemsBloc(this.getCartItemsUseCase) : super(const BaseState()) {
    on<GetCartItemsEvent>((event, emit) {});
    on<GetCartItems>((event, emit) async {
      emit(state.setProgress());
      Either res = await getCartItemsUseCase.call();
      res.fold((l) => emit(state.setFailure(l)),
          (r) => emit(state.setSuccess(r as CartItems)));
    });
  }
}
