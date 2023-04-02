import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/data/cart/models/cart_model.dart';
import 'package:qit_flutter/data/cart/source/remote/remote_source.dart';
import 'package:qit_flutter/data/core/base_repository/base_repository.dart';
import 'package:qit_flutter/data/home/models/product_model/product_model.dart';
import 'package:qit_flutter/domain/cart/entity/cart_items.dart';
import 'package:qit_flutter/domain/cart/entity/product_cart.dart';
import 'package:qit_flutter/domain/home/entities/product/product_entity.dart';
import 'package:salem_package/models/failure.dart';

import '../../../auth/source/local/local_data_source.dart';
import '../../../home/source/remote/home_remote.dart';
import '../local/cart_local_source.dart';

@LazySingleton(as: RemoteSource)
class RemoteSourceImpl extends RemoteSource with BaseRepository {
  final Dio dio;
  LocalDataSource auth;
  CartLocalSource localSource;
  HomeRemote homeRemote;
  RemoteSourceImpl(this.dio, this.auth, this.localSource, this.homeRemote);

  @override
  Future<Either<Failure, Unit>> addToCart(
      ProductEntity entity, int quantity) async {
    return await request<Unit>(() async {
      Response res = await dio.put("/cart/item",
          queryParameters: {
            "product_id": entity.id.toString(),
            "quantity": quantity.toString()
          },
          options: Options(headers: {
            HttpHeaders.authorizationHeader: "Bearer ${auth.token}"
          }));
      if (res.statusCode == 200) {
        localSource.saveData(entity);
      }
      return unit;
    });
  }

  @override
  Future<Either<Failure, CartItems>> getProducts() async {
    return await request(() async {
      Response response = await dio.get("/cart",
          options: Options(headers: {
            HttpHeaders.authorizationHeader: "Bearer ${auth.token}"
          }));
      CartModel cartModel = CartModel.fromJson(response.data);
      List<Map> localProd = await localSource.getData();
      List<Product> products = [];
      products.addAll(cartModel.data!.products ?? []);
      products.sort((a, b) {
        return a.productId!.compareTo(b.productId!);
      });
      if (!matched(localProd, products)) {
        await localSource.clear();
        for (int i = 0; i < products.length; i++) {
          Either<Failure, ProductEntity> res =
              await homeRemote.getProductById(products[i].productId!);
          res.fold((l) {
            return l;
          }, (r) {
            localSource.saveData(r);
          });
        }
      }
      localProd = await localSource.getData();
      List<ProductCart> data = [];
      for (int i = 0; i < localProd.length; i++) {
        data.add(ProductCart(
            image: localProd[i]["image"],
            title: localProd[i]["title"],
            id: localProd[i]["id"],
            count: products[i].totalQuantity!,
            total: products[i].total?.value ?? "null",
            currency: products[i].total?.currency ?? "null"));
      }
      return CartItems(
          data: data,
          total: cartModel.data?.total?.value ?? "null",
          currency: cartModel.data?.total?.currency ?? "null");
    });
  }

  @override
  Future<Either<Failure, Unit>> remove(int id) async {
    return await request<Unit>(() async {
      Response res = await dio.delete("/cart/item",
          queryParameters: {
            "product_id": id.toString(),
          },
          options: Options(headers: {
            HttpHeaders.authorizationHeader: "Bearer ${auth.token}"
          }));
      if (res.statusCode == 200) {
        localSource.remove(id);
      }
      return unit;
    });
  }

  bool matched(
      List<Map<dynamic, dynamic>> products, List<Product> productEntities) {
    int cnt = 0;
    for (int i = 0; i < products.length && i < productEntities.length; i++) {
      if (products[i]["id"] == productEntities[i].productId) {
        cnt++;
      }
    }
    return cnt == products.length && cnt == productEntities.length;
  }
}
