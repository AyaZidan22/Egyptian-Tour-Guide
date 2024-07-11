import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ETG/categories_pages.dart/category.dart';
import 'package:ETG/provider/favouraite_provider.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavouriteProvider>(context);
    List<Map<String, dynamic>> filteredItems = provider.favouriteItems;
    if (!provider.isLoaded) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Scaffold(
        body: CustomCategory(
          items: filteredItems,
        ),
      );
    }
  }
}
