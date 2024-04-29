import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/categories_pages.dart/category.dart';
import 'package:travelapp/provider/favouraite_provider.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavouriteProvider>(context);
    List<Map<String, String>> filteredItems = provider.favouriteItems;
    if (!provider.isLoaded) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: CustomCategory(
          items: filteredItems,
        ),
      );
    }
  }
}
