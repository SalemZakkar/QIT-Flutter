import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:qit_flutter/presentation/core/routes.dart';
import 'package:qit_flutter/presentation/home/pages/view_product_page.dart';

import '../../../../domain/home/entities/product/product_entity.dart';

class ProductCard extends StatelessWidget {
  final ProductEntity productEntity;

  const ProductCard({Key? key, required this.productEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.navigateTo(context,
            "${ViewProductPage.routeName}/${productEntity.id.toString()}");
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Theme.of(context).cardColor,
                child: CachedNetworkImage(
                  imageUrl: productEntity.image.conversions.large,
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
            ListTile(
              tileColor: Theme.of(context).cardColor,
              title: Text(
                productEntity.title,
                style: const TextStyle(overflow: TextOverflow.ellipsis),
              ),
              subtitle: Text(
                  "${productEntity.price.value} ${productEntity.price.currency}"),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22))),
              //  contentPadding: EdgeInsets.zero,
              //  tileColor: Colors.red,
              //contentPadding: const EdgeInsets.only(right: 0, left: 20),
              // trailing: IconButton(
              //   icon: Icon(
              //     Icons.add_circle_outlined,
              //     color: Theme.of(context).primaryColor,
              //   ),
              //   onPressed: () {},
              // ),
            )
          ],
        ),
      ),
    );
  }
}
