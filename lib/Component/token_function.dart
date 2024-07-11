import 'package:shared_preferences/shared_preferences.dart';

class TokenManager {
  static const String tokenKey = 'token';
  static const String userIdKey = 'userId';
  static const String nameKey = 'name';
  static const String emailKey = 'email';

  static SharedPreferences? prefs;

  static Future<void> initPrefs() async {
    prefs ??= await SharedPreferences.getInstance();
  }

  static Future<void> storeToken(String token) async {
    await initPrefs();
    await prefs!.setString(tokenKey, token);
  }

  static Future<String?> getToken() async {
    await initPrefs();
    return prefs!.getString(tokenKey);
  }

  static Future<void> deleteData() async {
    await initPrefs();
    await prefs!.remove(tokenKey);
    await prefs!.remove(userIdKey);
    await prefs!.remove(nameKey);
    await prefs!.remove(emailKey);
  }

  static Future<void> storeUserId(String userId) async {
    await initPrefs();
    await prefs!.setString(userIdKey, userId);
  }

  static Future<String?> getUserId() async {
    await initPrefs();
    return prefs!.getString(userIdKey);
  }

  static Future<void> storeUserData(String email, String name) async {
    await initPrefs();
    await prefs!.setString(nameKey, name);
    await prefs!.setString(emailKey, email);
  }

  static Future<Map<String, String?>> getUserData() async {
    await initPrefs();
    return {
      'userId': prefs!.getString(userIdKey),
      'name': prefs!.getString(nameKey),
      'email': prefs!.getString(emailKey),
    };
  }
}
