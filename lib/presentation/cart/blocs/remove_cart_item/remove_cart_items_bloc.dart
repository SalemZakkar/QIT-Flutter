import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:salem_package/bloc/base_state.dart';

import '../../../../domain/cart/usecase/remove_from_cart.dart';
import '../../../../injection.dart';
import '../get_cart_items/get_cart_items_bloc.dart';

part 'remove_cart_items_bloc.freezed.dart';
part 'remove_cart_items_event.dart';

@injectable
class RemoveCartItemsBloc extends Bloc<RemoveCartItemsEvent, BaseState> {
  RemoveFromCartUseCase removeCartItemUseCase;

  RemoveCartItemsBloc(this.removeCartItemUseCase) : super(const BaseState()) {
    on<RemoveCartItemsEvent>((event, emit) {
    });
    on<RemoveCartItem>((event, emit) async {
      emit(state.setProgress());
      Either res = await removeCartItemUseCase.call(event.id);
      res.fold((l) => emit(state.setFailure(l)), (r) {
        getIt<GetCartItemsBloc>().add(const GetCartItems());
        emit(state.setSuccess(r));
      });
    });
  }
}
