import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/auth/entites/user_data_entity/user.dart';

part 'freezed/user_model.freezed.dart';
part 'freezed/user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String email,
    required String name,
    required int id,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

extension Convert on UserModel {
  User toDomain() => User(id: id, name: name, email: email);
}
