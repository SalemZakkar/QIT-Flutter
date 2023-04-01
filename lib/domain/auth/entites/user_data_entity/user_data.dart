import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qit_flutter/domain/auth/entites/user_data_entity/user.dart';

part 'freezed/user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({required String token, required User user}) =
      _UserData;
}
