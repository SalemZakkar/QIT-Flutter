import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qit_flutter/data/auth/models/user_data/user_model.dart';

import '../../../../domain/auth/entites/user_data_entity/user_data.dart';

part 'freezed/user_data_model.freezed.dart';
part 'freezed/user_data_model.g.dart';

@freezed
class UserDataModel with _$UserDataModel {
  const factory UserDataModel(
      {required UserModel user, required String token}) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, Object?> json) =>
      _$UserDataModelFromJson(json);
}

extension Convert on UserDataModel {
  UserData toDomain() => UserData(token: token, user: user.toDomain());
}
