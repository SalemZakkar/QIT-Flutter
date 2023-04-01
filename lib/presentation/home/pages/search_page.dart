import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qit_flutter/domain/home/entities/product/product_list_entity.dart';
import 'package:qit_flutter/presentation/home/blocs/get_product_by_search_bloc/get_products_by_search_bloc.dart';
import 'package:qit_flutter/presentation/home/pages/widgets/error_widget.dart';
import 'package:qit_flutter/presentation/home/pages/widgets/product_card.dart';
import 'package:salem_package/bloc/base_state.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/salem_package.dart' as sz;

import '../../../domain/home/entities/product/product_entity.dart';
import '../../../injection.dart';

class HomeSearchPage extends StatefulWidget {
  static const String routeName = "/search";

  const HomeSearchPage({Key? key}) : super(key: key);

  @override
  State<HomeSearchPage> createState() => _HomeSearchPageState();
}

class _HomeSearchPageState extends State<HomeSearchPage> with sz.ScreenUtil {
  var bloc = getIt<GetProductsBySearchBloc>();
  int page = 1;
  int m = -1;
  bool loadin = false;
  bool fail = false;
  late FailureType failureType;
  List<ProductEntity> data = [];
  ScrollController controller = ScrollController();

  bool get() {
    return m != data.length;
  }

  void fetch(ProductListEntity productListEntity) {
    if (get()) {
      m = productListEntity.meta.total;
      data.addAll(productListEntity.data);
      data = data.toSet().toList();
      page += 1;
      setState(() {});
    }
  }

  void reset() {
    page = 1;
    data.clear();
    m = -1;
    setState(() {});
  }

  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    errorMessages = {
      FailureType.networkError: "no_network".tr(),
      FailureType.serverError: "server_error".tr(),
    };
    controller.addListener(() {
      if (controller.offset == controller.position.maxScrollExtent) {
        bloc.add(GetProductsBySeacrh(10, page, textEditingController.text));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(22)),
          child: TextFormField(
            onEditingComplete: () {
              FocusManager.instance.primaryFocus?.unfocus();
              reset();
              bloc.add(
                  GetProductsBySeacrh(10, page, textEditingController.text));
            },
            controller: textEditingController,
            decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: InkWell(
                  onTap: () {
                    reset();
                    bloc.add(GetProductsBySeacrh(
                        10, page, textEditingController.text));
                  },
                  child: Icon(
                    Icons.search,
                    color: Theme.of(context).appBarTheme.iconTheme?.color,
                  ),
                ),
                hintText: "search".tr(),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none),
          ),
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child:
            BlocListener<GetProductsBySearchBloc, BaseState<ProductListEntity>>(
          bloc: bloc,
          listener: (context, state) {
            if (state.progress) {
              setState(() {
                loadin = true;
                fail = false;
              });
            }
            if (state.fail) {
              setState(() {
                loadin = false;
                fail = true;
                failureType = state.failure!.type;
              });
            }
            if (state.success) {
              setState(() {
                loadin = false;
                fail = false;
              });
              fetch(state.item!);
            }
          },
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            physics: const BouncingScrollPhysics(),
            controller: controller,
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
              if (fail) {
                return HomeErrorWidget(
                    error: errorMessages[failureType] ?? "unknown_error".tr(),
                    voidCallback: () {
                      bloc.add(GetProductsBySeacrh(
                          10, page, textEditingController.text));
                    });
              }
              return null;
            },
            itemCount: data.length + 1,
          ),
        ),
      ),
    );
  }
}
