import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/data/core/base_repository/base_repository.dart';
import 'package:qit_flutter/data/home/models/product_model/product_list_model.dart';
import 'package:qit_flutter/data/home/models/product_model/product_model.dart';
import 'package:qit_flutter/data/home/source/remote/home_remote.dart';
import 'package:qit_flutter/domain/home/entities/product/product_entity.dart';
import 'package:qit_flutter/domain/home/entities/product/product_list_entity.dart';
import 'package:salem_package/models/failure.dart';

@LazySingleton(as: HomeRemote)
class HomeRemoteImpl extends HomeRemote with BaseRepository {
  Dio dio;
  CancelToken cancelToken = CancelToken();

  HomeRemoteImpl(this.dio);

  @override
  Future<Either<Failure, ProductEntity>> getProductById(int id) async {
    return await request<ProductEntity>(() async {
      Response res = await dio.get("/product/${id.toString()}");
      ProductModel model = ProductModel.fromJson(res.data["data"]);
      return model.toDomain();
    });
  }

  @override
  Future<Either<Failure, ProductListEntity>> getProductBySearch(
      int perPage, int page, keyword) async {
    return await request<ProductListEntity>(() async {
      Response res = await dio.get("/product", queryParameters: {
        "perpage": perPage.toString(),
        "page": page.toString(),
        "keyword": keyword.toString()
      });
      ProductListModel model = ProductListModel.fromJson(res.data);
      return model.toDomain();
    });
  }

  @override
  Future<Either<Failure, ProductListEntity>> getProducts(
      int perPage, int page) async {
    return await request<ProductListEntity>(() async {
      Response res = await dio.get("/product", queryParameters: {
        "perpage": perPage.toString(),
        "page": page.toString()
      });
      ProductListModel model = ProductListModel.fromJson(res.data);
      return model.toDomain();
    });
  }
}
