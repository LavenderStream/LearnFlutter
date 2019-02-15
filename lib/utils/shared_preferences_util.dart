import 'package:shared_preferences/shared_preferences.dart';

class ShardPreferencesUtil {
  ShardPreferencesUtil._();

  static ShardPreferencesUtil _instance;

  static ShardPreferencesUtil getInstance() {
    if (_instance == null) {
      _instance = ShardPreferencesUtil._();
    }
    return _instance;
  }

  Future<bool> setInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setInt(key, value);
  }

  Future<bool> setBoolean(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(key, value);
  }

  Future<bool> setDouble(String key, double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setDouble(key, value);
  }

  Future<bool> setString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(key, value);
  }

  Future<int> getInt(String key, int def) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return Future(() {
      return prefs.getInt(key) ?? def;
    });
  }

  Future<bool> getBoolean(String key, bool def) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return Future(() {
      return prefs.getBool(key) ?? def;
    });
  }

  Future<double> getDouble(String key, double def) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return Future(() {
      return prefs.getDouble(key) ?? def;
    });
  }

  Future<String> getString(String key, String def) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return Future(() {
      return prefs.getString(key) ?? def;
    });
  }
}
