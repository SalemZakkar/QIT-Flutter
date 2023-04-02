import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/domain/cart/entity/product_cart.dart';
import 'package:qit_flutter/injection.dart';
import 'package:qit_flutter/presentation/cart/blocs/remove_cart_item/remove_cart_items_bloc.dart';
import 'package:qit_flutter/presentation/core/extension/screen_util_extension.dart';
import 'package:salem_package/enums/failure_type.dart';
import 'package:salem_package/salem_package.dart';
import 'package:salem_package/salem_package.dart' as sz;

class CartCard extends StatefulWidget {
  final ProductCart cart;

  const CartCard({Key? key, required this.cart}) : super(key: key);

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> with sz.ScreenUtil {
  var bloc = getIt<RemoveCartItemsBloc>();

  @override
  void initState() {
    errorMessages = {
      FailureType.serverError: "server_error".tr(),
      FailureType.networkError: "no_network".tr(),
      FailureType.unAuth: "unAuth".tr()
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RemoveCartItemsBloc, BaseState>(
      bloc: bloc,
      listener: (context, state) {
        if (state.progress) {
          showLoading(context);
        }
        if (state.fail) {
          stopLoading(context);
          showErrorDialog(context, state.failure!.type);
        }
        if (state.success) {
          stopLoading(context);
        }
      },
      child: Container(
        height: 100.h,
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(22)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            15.w.spaceWidth(),
            CircleAvatar(
              radius: 25.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CachedNetworkImage(
                  imageUrl: widget.cart.image,
                  placeholder: (context, url) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).primaryColor,
                      ),
                    );
                  },
                  errorWidget: (context, url, error) {
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
            20.w.spaceWidth(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150.w,
                  child: Text(
                    widget.cart.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
                10.h.spaceHeight(),
                Text("${"count".tr()}: ${widget.cart.count}"),
                5.h.spaceHeight(),
                Text(
                    "${"total".tr()}: ${widget.cart.total} ${widget.cart.currency}"),
              ],
            ),
            IconButton(
                onPressed: () {
                  bloc.add(RemoveCartItem(id: widget.cart.id));
                },
                icon: const Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
