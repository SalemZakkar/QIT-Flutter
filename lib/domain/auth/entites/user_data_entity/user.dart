import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/user.freezed.dart';

@freezed
class User with _$User {
  const factory User(
      {required int id, required String name, required String email}) = _User;
}
