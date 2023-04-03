import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/domain/cart/entity/cart_items.dart';
import 'package:qit_flutter/injection.dart';
import 'package:qit_flutter/presentation/cart/blocs/get_cart_items/get_cart_items_bloc.dart';
import 'package:qit_flutter/presentation/cart/pages/widget/un_auth.dart';
import 'package:qit_flutter/presentation/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:qit_flutter/presentation/core/widgets/error_widget.dart';
import 'package:salem_package/bloc/base_state.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/salem_package.dart' as sz;

import 'widget/cart_card.dart';

class CartPage extends StatefulWidget {
  static const String routeName = "/cart";

  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with sz.ScreenUtil {
  var bloc = getIt<GetCartItemsBloc>();
  bool success = false;
  String price = "";
  String cur = "";

  @override
  void initState() {
    errorMessages = {
      FailureType.serverError: "server_error".tr(),
      FailureType.networkError: "no_network".tr(),
      FailureType.unAuth: "unAuth".tr()
    };
    bloc.add(const GetCartItems());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool loggedIn = getIt<AuthBloc>().state is Authenticated;
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(listener: (context, state) {
          if (state is Authenticated) {
            setState(() {
              bloc.add(const GetCartItemsEvent.getCartItems());
              loggedIn = true;
            });
          } else {
            setState(() {
              loggedIn = false;
            });
          }
        })
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text("cart".tr()),
          toolbarHeight: 50.h,
        ),
        body: Container(
          constraints: const BoxConstraints.expand(),
          alignment: Alignment.center,
          child: loggedIn
              ? BlocConsumer<GetCartItemsBloc, BaseState>(
                  bloc: bloc,
                  listener: (context, state) {
                    if (state.success) {
                      success = true;
                      price = (state.item as CartItems).total;
                      cur = (state.item as CartItems).currency;
                      if ((state.item as CartItems).data.isEmpty) {
                        success = false;
                      }
                      setState(() {});
                    }
                    if (state.fail) {
                      setState(() {
                        success = false;
                        price = "";
                        cur = "";
                      });
                    }
                    if (state.progress) {
                      success = false;
                    }
                  },
                  builder: (context, state) {
                    if (state.progress) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: Theme.of(context).primaryColor,
                        ),
                      );
                    }
                    if (state.fail) {
                      return Center(
                        child: HomeErrorWidget(
                          error: errorMessages[state.failure!.type] ??
                              "unknown_error".tr(),
                          voidCallback: () {
                            bloc.add(const GetCartItems());
                          },
                        ),
                      );
                    }
                    if (state.success) {
                      CartItems cartItems = state.item as CartItems;
                      if (cartItems.data.isEmpty) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove_shopping_cart_outlined,
                              size: 30.r,
                            ),
                            20.h.spaceHeight(),
                            Text(
                              "cart_empty".tr(),
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w600),
                            ),
                          ],
                        );
                      }
                      return ListView.separated(
                          padding: EdgeInsets.all(20.h),
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return CartCard(
                              cart: cartItems.data[index],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return 20.h.spaceHeight();
                          },
                          itemCount: cartItems.data.length);
                    }
                    return const SizedBox();
                  },
                )
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const UnAuthWidget()),
        ),
        bottomNavigationBar: Visibility(
          visible: success,
          child: Container(
            width: 1000.w,
            height: 30.h,
            alignment: Alignment.center,
            child: Text(
              "${"total".tr()}: $price $cur",
              style: TextStyle(fontSize: 14.sp),
            ),
          ),
        ),
      ),
    );
  }
}
