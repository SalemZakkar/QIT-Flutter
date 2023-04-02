import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/domain/home/entities/product/product_entity.dart';
import 'package:qit_flutter/presentation/auth/pages/sign_in_page.dart';
import 'package:qit_flutter/presentation/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:qit_flutter/presentation/core/extension/screen_util_extension.dart';
import 'package:qit_flutter/presentation/core/routes.dart';
import 'package:qit_flutter/presentation/core/widgets/error_widget.dart';
import 'package:qit_flutter/presentation/home/blocs/get_product_bloc/get_product_bloc.dart';
import 'package:quickalert/quickalert.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/salem_package.dart';
import 'package:salem_package/salem_package.dart' as sz;

import '../../../injection.dart';
import '../blocs/add_to_cart_bloc/add_to_cart_bloc.dart';

class ViewProductPage extends StatefulWidget {
  final int id;
  static const String routeName = "/viewProduct";

  const ViewProductPage({Key? key, required this.id}) : super(key: key);

  @override
  State<ViewProductPage> createState() => _ViewProductPageState();
}

class _ViewProductPageState extends State<ViewProductPage> with sz.ScreenUtil {
  var bloc = getIt<GetProductBloc>();
  bool addToCart = false;
  int quantity = 1;
  late ProductEntity entity;

  @override
  void initState() {
    errorMessages = {
      FailureType.networkError: "no_network".tr(),
      FailureType.serverError: "server_error".tr()
    };
    bloc.add(GetProductById(widget.id));
    super.initState();
  }

  var bloc2 = getIt<AddToCartBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45.h,
      ),
      body: BlocBuilder<GetProductBloc, BaseState<ProductEntity>>(
        bloc: bloc,
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
                error:
                    errorMessages[state.failure!.type] ?? "unknown_error".tr(),
                voidCallback: () {
                  bloc.add(GetProductById(widget.id));
                },
              ),
            );
          }
          if (state.success) {
            if (!addToCart) {
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                addToCart = true;
                entity = state.item!;
                setState(() {});
              });
            }
            return Container(
              constraints: const BoxConstraints.expand(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: SizedBox(
                        width: 1000.w,
                        height: 300.h,
                        child: CachedNetworkImage(
                          imageUrl: state.item!.image.conversions.def,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          placeholder: (context, str) {
                            return Center(
                              child: CircularProgressIndicator(
                                color: Theme.of(context).primaryColor,
                              ),
                            );
                          },
                          errorWidget: (context, str, error) {
                            return Center(
                              child: Icon(
                                Icons.error,
                                color: Theme.of(context).colorScheme.error,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    20.h.spaceHeight(),
                    Text(
                      state.item!.title,
                      style: TextStyle(fontSize: 20.sp),
                    ),
                    20.h.spaceHeight(),
                    Text(
                      state.item!.title,
                    ),
                    20.h.spaceHeight(),
                    Text(
                      "${state.item!.price.value} ${state.item!.price.currency}",
                    ),
                    20.h.spaceHeight(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              if (quantity > 1) {
                                setState(() {
                                  quantity--;
                                });
                              }
                            },
                            icon: Icon(
                              Icons.remove_circle_outline,
                              color: Theme.of(context).colorScheme.error,
                            )),
                        Text(
                          quantity.toString(),
                          style: TextStyle(fontSize: 18.sp),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            icon: const Icon(Icons.add_circle_outline)),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
          return const SizedBox();
        },
      ),
      floatingActionButton: Visibility(
        visible: addToCart,
        child: BlocListener<AddToCartBloc, BaseState>(
          bloc: bloc2,
          listener: (context, state) {
            if (state.progress) {
              showLoading(context);
            }
            if (state.success) {
              stopLoading(context);
              showSuccessDialog(context, msg: "add_to_cart_success".tr());
            }
            if (state.fail) {
              stopLoading(context);
              showErrorDialog(context, state.failure!.type);
            }
          },
          child: FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () async {
              if (getIt<AuthBloc>().state is Authenticated) {
                bloc2.add(AddToCartEvent.addToCart(
                    entity: entity, quantity: quantity));
                //    getIt<GetCartItemsUseCase>().call();
              } else {
                QuickAlert.show(
                    context: context,
                    type: QuickAlertType.info,
                    title: "warning".tr(),
                    confirmBtnColor: Theme.of(context).primaryColor,
                    confirmBtnText: "sign_in".tr(),
                    onConfirmBtnTap: () {
                      Navigator.pop(context);
                      context.router
                          .navigateTo(context, "${SignInPage.routeName}/true");
                    },
                    cancelBtnText: "cancel".tr(),
                    text: "unAuth".tr());
              }
            },
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
