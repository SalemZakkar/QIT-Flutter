import 'package:injectable/injectable.dart';
import 'package:qit_flutter/domain/auth/repository/auth_repository.dart';

@lazySingleton
class FirstTimeUseCase {
  AuthRepository repository;

  FirstTimeUseCase(this.repository);

  bool call() {
    return repository.firstTime();
  }
}
