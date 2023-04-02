import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/domain/home/entities/product/product_list_entity.dart';
import 'package:qit_flutter/injection.dart';
import 'package:qit_flutter/presentation/cart/pages/cart_page.dart';
import 'package:qit_flutter/presentation/core/routes.dart';
import 'package:qit_flutter/presentation/core/widgets/error_widget.dart';
import 'package:qit_flutter/presentation/home/blocs/get_products_bloc/get_products_bloc.dart';
import 'package:qit_flutter/presentation/home/pages/search_page.dart';
import 'package:qit_flutter/presentation/home/pages/widgets/product_card.dart';
import 'package:qit_flutter/presentation/settings/pages/settings_page.dart';
import 'package:salem_package/bloc/base_state.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/salem_package.dart' as sz;

import '../../../domain/home/entities/product/product_entity.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with sz.ScreenUtil {
  var bloc = getIt<GetProductsBloc>();
  ScrollController controller = ScrollController();
  List<ProductEntity> data = [];
  int n = 10;
  int p = 1;
  int m = -1;
  bool loadin = false;
  bool error = false;
  late FailureType type;

  bool get() {
    if (m == -1) {
      return true;
    }
    return m != data.length;
  }

  void load(ProductListEntity listEntity) {
    if (get() && !loadin) {
      m = listEntity.meta.total;
      data.addAll(listEntity.data);
      data = data.toSet().toList();
      p += 1;
      setState(() {});
    }
  }

  @override
  void initState() {
    errorMessages = {
      FailureType.networkError: "no_network".tr(),
      FailureType.serverError: "server_error".tr(),
    };
    bloc.add(GetProductsListEvent(n: n, p: p));
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        if (get()) {
          bloc.add(GetProductsListEvent(n: n, p: p));
        }
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<GetProductsBloc, BaseState<ProductListEntity>>(
      listener: (context, state) {
        if (state.progress) {
          setState(() {
            loadin = true;
            error = false;
          });
        }
        if (state.fail) {
          type = state.failure!.type;
          setState(() {
            error = true;
            loadin = false;
          });
        }
        if (state.success) {
          setState(() {
            loadin = false;
            error = false;
            load(state.item!);
          });
        }
      },
      bloc: bloc,
      child: CustomScrollView(
        controller: controller,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            //title: Text("our_products".tr()),
            leading: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                context.router.navigateTo(context, CartPage.routeName);
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  context.router.navigateTo(context, HomeSearchPage.routeName);
                },
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  context.router.navigateTo(context, SettingsPage.routeName);
                },
              ),
            ],
            pinned: true,
            stretch: true,
            //  snap: true,
            expandedHeight: 120.h,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.fadeTitle,
              ],
              title: Text(
                "our_products".tr(),
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 220,
                  mainAxisExtent: 240,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                if (index < data.length) {
                  return ProductCard(
                    productEntity: data[index],
                  );
                }
                if (loadin) {
                  return Center(
                      child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ));
                }
                if (error) {
                  return HomeErrorWidget(
                      error: errorMessages[type] ?? "unknown_error".tr(),
                      voidCallback: () {
                        bloc.add(GetProductsListEvent(n: n, p: p));
                      });
                }
                return null;
              },
              itemCount: data.length + 1,
            ),
          ),
        ],
      ),
    ));
  }
}
