import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/Component/colors.dart';
import 'package:travelapp/detail_pages.dart/detail_template.dart';
import 'package:travelapp/provider/favouraite_provider.dart';

class CustomCategory extends StatefulWidget {
  final List<Map<String, String>> items;
  const CustomCategory({super.key, required this.items});

  @override
  State<CustomCategory> createState() => _CustomCategoryState();
}

class _CustomCategoryState extends State<CustomCategory> {
  List<Map<String, String>> filteredItems = [];
  @override
  void initState() {
    super.initState();
    filteredItems = List<Map<String, String>>.from(widget.items);
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
        filteredItems = List<Map<String, String>>.from(widget.items);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
          child: TextField(
            onChanged: (value) {
              filterSearchResults(value);
            },
            decoration: InputDecoration(
                hintText: "Search",
                hintStyle: const TextStyle(color: AppColors.mainColor),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.mainColor,
                ),
                fillColor: Colors.grey.shade100,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none)),
          ),
        ),
        Expanded(
          child:
              Consumer<FavouriteProvider>(builder: (context, provider, child) {
            return ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CustomDetailPage(
                                  img: filteredItems[i]["img"]!,
                                  itemName: filteredItems[i]["name"]!,
                                  history: filteredItems[i]["history"],
                                  description: filteredItems[i]["description"],
                                  location: filteredItems[i]["location"],
                                  openingHours: filteredItems[i]
                                      ["openingHours"],
                                  prices: filteredItems[i]["prices"],
                                  tips: filteredItems[i]["tips"]),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(filteredItems[i]["img"]!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  filteredItems[i]["name"]!,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.mainColor),
                                ),
                                Text(filteredItems[i]["descrip"]!,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      
                                    ))
                              ],
                            ),
                            IconButton(
                              icon: provider.isExist(filteredItems[i])
                                  ? const Icon(
                                      Icons.favorite,
                                      color: AppColors.mainColor,
                                    )
                                  : const Icon(Icons.favorite_border_outlined),
                              onPressed: () {
                                provider.toggleFavourite(filteredItems[i]);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }
}
