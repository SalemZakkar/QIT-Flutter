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

  bool get firstTime {
    bool first =
        sharedPreferences.getBool(SharedPreferenceKeys.firstTime) ?? true;
    if (first) {
      sharedPreferences.setBool(SharedPreferenceKeys.firstTime, false);
    }
    return first;
  }

  void setLoggedIn(bool status) =>
      sharedPreferences.setBool(SharedPreferenceKeys.loggedIn, status);

  void logIn(String email, String password, String token) {
    sharedPreferences.setString(SharedPreferenceKeys.email, email);
    sharedPreferences.setString(SharedPreferenceKeys.password, password);
    sharedPreferences.setString(SharedPreferenceKeys.token, token);
    sharedPreferences.setBool(SharedPreferenceKeys.loggedIn, true);
  }

  void logout() {
    sharedPreferences.remove(SharedPreferenceKeys.email);
    sharedPreferences.remove(SharedPreferenceKeys.password);
    sharedPreferences.remove(SharedPreferenceKeys.token);
    sharedPreferences.remove(SharedPreferenceKeys.loggedIn);
  }

  @override
  String toString() {
    return """Email: ${sharedPreferences.getString(SharedPreferenceKeys.email)}
Password: ${sharedPreferences.getString(SharedPreferenceKeys.password)}
token: ${sharedPreferences.getString(SharedPreferenceKeys.token)}
loggedIn: ${sharedPreferences.getBool(SharedPreferenceKeys.loggedIn)}
    """;
  }
}
