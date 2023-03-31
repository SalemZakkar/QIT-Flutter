import 'package:injectable/injectable.dart';
import 'package:qit_flutter/data/core/constants/shared_preferencer_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class LocalDataSource {
  SharedPreferences sharedPreferences;
  LocalDataSource(this.sharedPreferences);
  bool get getLoggedIn =>
      sharedPreferences.getBool(SharedPreferenceKeys.loggedIn) == true;
  String? get token => sharedPreferences.getString(SharedPreferenceKeys.token);
  String? get email => sharedPreferences.getString(SharedPreferenceKeys.email);
  String? get password =>
      sharedPreferences.getString(SharedPreferenceKeys.password);
  void setLoggedIn(bool status) =>
      sharedPreferences.setBool(SharedPreferenceKeys.loggedIn, status);
  void logIn(String email, String password, String token) {
    sharedPreferences.setString(SharedPreferenceKeys.email, email);
    sharedPreferences.setString(SharedPreferenceKeys.password, password);
    sharedPreferences.setString(SharedPreferenceKeys.token, token);
    sharedPreferences.setBool(SharedPreferenceKeys.loggedIn, true);
  }

  void logout() => sharedPreferences.clear();
  @override
  String toString() {
    return """Email: ${sharedPreferences.getString(SharedPreferenceKeys.email)}
Password: ${sharedPreferences.getString(SharedPreferenceKeys.password)}
token: ${sharedPreferences.getString(SharedPreferenceKeys.token)}
loggedIn: ${sharedPreferences.getBool(SharedPreferenceKeys.loggedIn)}
    """;
  }
}
