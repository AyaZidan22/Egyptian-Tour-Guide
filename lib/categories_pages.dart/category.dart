import 'package:ETG/detail_pages.dart/detail_template.dart';
import 'package:ETG/provider/favouraite_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomCategory extends StatefulWidget {
  final List<Map<String, dynamic>> items;

  const CustomCategory({super.key, required this.items});

  @override
  CustomCategoryState createState() => CustomCategoryState();
}

class CustomCategoryState extends State<CustomCategory> {
  List<Map<String, dynamic>> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = List<Map<String, dynamic>>.from(widget.items);
  }

  void filterSearchResults(String query) {
    if (query.isNotEmpty) {
      setState(() {
        filteredItems = widget.items
            .where((item) =>
                item['name']!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    } else {
      setState(() {
        filteredItems = List<Map<String, dynamic>>.from(widget.items);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FavouriteProvider>(
      builder: (context, favouriteProvider, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 40, 15, 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  onChanged: (value) {
                    filterSearchResults(value);
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
                    hintText: "Search",
                    hintStyle: GoogleFonts.plusJakartaSans(
                      color: const Color(0XFFA17D1C),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0XFFA17D1C),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  bool isFavorite =
                      favouriteProvider.isExist(filteredItems[index]);
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CustomDetailPage(
                            img: filteredItems[index]["img"]!,
                            itemName: filteredItems[index]["name"]!,
                            description: filteredItems[index]["description"],
                            location: filteredItems[index]["location"],
                            openingHours: filteredItems[index]["openingHours"],
                            prices: filteredItems[index]["prices"],
                            tips: filteredItems[index]["tips"],
                            latitude: filteredItems[index]["latitude"],
                            longitude: filteredItems[index]["longitude"],
                            url: filteredItems[index]["url"],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  filteredItems[index]["img"]!,
                                  height: 200,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.transparent,
                                        Colors.black.withOpacity(0.7),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: const BorderRadius.vertical(
                                      bottom: Radius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                right: 10,
                                child: Text(
                                  filteredItems[index]["name"]!,
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 10,
                                child: IconButton(
                                  icon: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.white,
                                  ),
                                  onPressed: () {
                                    favouriteProvider
                                        .toggleFavourite(filteredItems[index]);
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 16,
                                color: Color(0XFFA17D1C),
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  filteredItems[index]["descrip"]!,
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0XFFA17D1C),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
