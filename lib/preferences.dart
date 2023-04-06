import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _prefs;

  /// Init singleton shared preferences
  static Future<SharedPreferences> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }

  /// Set string value to share preferences
  static Future<bool> setString(String key, String value) async =>
      await _prefs.setString(key, value);

  /// Set boolean value to share preferences
  static Future<bool> setBool(String key, bool value) async =>
      await _prefs.setBool(key, value);

  /// Set double value to share preferences
  static Future<bool> setDouble(String key, double value) async =>
      await _prefs.setDouble(key, value);

  /// Set integer value to share preferences
  static Future<bool> setInt(String key, int value) async =>
      await _prefs.setInt(key, value);

  /// Remove value from shared preferences
  static Future<bool> remove(String key) async => await _prefs.remove(key);

  /// Get string value from share preferences
  static String? getString(String key) => _prefs.getString(key);

  /// Get boolean value from share preferences
  static bool? getBool(String key) => _prefs.getBool(key);

  /// Get integer value from share preferences
  static int? getInt(String key) => _prefs.getInt(key);

  /// Get double value from share preferences
  static double? getDouble(String key) => _prefs.getDouble(key);
}
