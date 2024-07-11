import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavouriteProvider extends ChangeNotifier {
  List<Map<String, dynamic>> favouriteItems = [];
  String? userId;
  bool loaded = false;

  bool get isLoaded => loaded;

  FavouriteProvider() {
    loadUserId();
  }

  String get prefsKey => "favourites_$userId";

  Future<void> loadUserId() async {
    final prefs = await SharedPreferences.getInstance();
    userId = prefs.getString('userId');
    if (userId != null) {
      await loadFavourites();
    }
    notifyListeners();
  }

  void toggleFavourite(Map<String, dynamic> favouriteItem) async {
    final isExist = this.isExist(favouriteItem);
    if (isExist) {
      favouriteItems
          .removeWhere((item) => item["name"] == favouriteItem["name"]);
    } else {
      favouriteItems.add(favouriteItem);
    }
    await saveFavourites();
    notifyListeners();
  }

  bool isExist(Map<String, dynamic> favouriteItem) {
    return favouriteItems.any((item) => item["name"] == favouriteItem["name"]);
  }

  void clearFavourites() async {
    favouriteItems = [];
    await saveFavourites();
    notifyListeners();
  }

  Future<void> saveFavourites() async {
    if (userId == null) return;
    final prefs = await SharedPreferences.getInstance();
    String jsonString = jsonEncode(favouriteItems);
    await prefs.setString(prefsKey, jsonString);
  }

  Future<void> loadFavourites() async {
    if (userId == null) return;
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString(prefsKey);
    if (jsonString != null) {
      List<dynamic> jsonList = jsonDecode(jsonString);
      favouriteItems = jsonList
          .map((favouriteItem) => Map<String, dynamic>.from(favouriteItem))
          .toList();
    }
    loaded = true;
    notifyListeners();
  }
}
