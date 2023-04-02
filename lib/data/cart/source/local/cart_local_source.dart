import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/home/entities/product/product_entity.dart';

@lazySingleton
class CartLocalSource {
  Future<void> saveData(ProductEntity entity) async {
    var box = await Hive.openBox("Products");
    box.delete(entity.id);
    box.put(entity.id, {
      "title": entity.title,
      "image": entity.image.conversions.large,
      "id": entity.id
    });
    box.close();
  }

  Future<List<Map<dynamic, dynamic>>> getData() async {
    var box = await Hive.openBox("Products");
    List<Map> list = [];
    var map = box.toMap();
    // print(map);
    map.forEach((key, value) {
      list.add(value);
    });
    box.close();
    return list;
  }

  Future<void> remove(int id) async {
    var box = await Hive.openBox("Products");
    // print(box.toMap());
    box.delete(id);
    box.close();
  }

  Future<void> clear() async {
    var box = await Hive.openBox("Products");
    box.clear();
    box.close();
  }
}
