import 'package:flutter/material.dart';
import 'package:travelapp/categories_pages.dart/category.dart';

class Mountains extends StatefulWidget {
  const Mountains({super.key});

  @override
  State<Mountains> createState() => _MountainsState();
}

class _MountainsState extends State<Mountains> {
  List<Map<String, String>> mountains = [
    {
      "img": "img/Mountains/Mount_Moses.jpg",
      "name": "Musa Mountain",
      "descrip": " South Sinai, Egypt.",
      "description":"""Mount Sinai is renowned for its association with various religious traditions, particularly in Christianity, Judaism, and Islam. According to biblical accounts, it is believed to be the place where Moses received the Ten Commandments from God. The mountain stands at an elevation of approximately 2,285 meters (7,497 feet) and offers breathtaking panoramic views of the surrounding desert landscape.\nMany pilgrims and tourists undertake the climb to the summit to witness the sunrise or sunset, creating a spiritually and visually significant experience.""",
      "location":""" Mount Sinai is situated in the southern part of the Sinai Peninsula, within the region of South Sinai, Egypt. It is part of the larger Sinai Peninsula and is located near the town of St. Catherine, home to the famous St. Catherine's Monastery.""",
    "tips":"""\n•	Climbing the mountain is typically done on foot, and there are marked pathways for pilgrims and tourists.
\n•	It is advisable to check the current weather conditions and be prepared for varying temperatures, especially if you plan to visit the summit.
\n•	Many visitors prefer to make the climb during the night to witness the sunrise, but it's essential to have proper lighting equipment for the ascent.
"""
    },
    {
      "img": "img/Mountains/SiwaMautaWestSide.jpg",
      "name": "Al-Mawta Mountain",
      "descrip": "Siwa Oasis, Egypt.",
      "description":"""The Mountain of the Dead, also known as Gebel al-Mawta, is an archaeological site located in the ancient city of Siwa Oasis in Egypt.\nThe Mountain of the Dead is an ancient necropolis (cemetery) that dates back to the Greco-Roman period. It is situated in the western part of Siwa Oasis, which is known for its historical significance and unique desert environment. The mountain is home to numerous rock-cut tombs, many of which feature distinctive architectural elements and inscriptions.\nThese tombs are believed to have been used for the burial of important individuals during the ancient period, and some are adorned with decorations and carvings, providing insights into the funerary practices and beliefs of the time.""",
      "location":""" Siwa Oasis is located in the Western Desert of Egypt, near the Libyan border. The Mountain of the Dead is situated within this oasis, and Siwa itself is approximately 560 kilometers (350 miles) southwest of Cairo. The oasis is known for its isolation, natural beauty, and historical significance."""
    ,"tips":"""• Due to the historical and cultural importance of the site, visitors are encouraged to be respectful and adhere to any guidelines or restrictions in place.
\n•	It is recommended to explore the Mountain of the Dead with the assistance of a knowledgeable guide who can provide insights into the history and significance of the tombs.
"""
    },
    {
      "img":
          "img/Mountains/The_perspective_of_the_galala_Plateau_Road_in_egypt.jpg",
      "name": "Al-Galala Mountain",
      "descrip": "Red Sea coast, Egypt.",
      "description":"Al-Galala Mountain is part of a large-scale development project known as the 'Galala City'.\n Al-Galala Mountain is a prominent mountainous area situated near the Red Sea. The Galala City project aims to transform this region into a comprehensive resort destination, featuring various amenities, entertainment facilities, and residential areas. The project includes plans for hotels, a golf course, and recreational spaces, taking advantage of the natural landscape and offering scenic views of the Red Sea.",
      "location":""" Al-Galala Mountain is located on the Red Sea coast in Egypt, specifically in the vicinity of the Suez Governorate. The development project extends along the coastline and into the surrounding mountainous terrain.""",

    },
    {
      "img": "img/Mountains/جبل-الحلال-في-مصر.jpg",
      "name": "Al-Halal Mountain",
      "descrip": "North Sinai Governorate, Egypt.",
       "description":"""Jabal al-Halāl (Arabic:جبل الحلال) is a mountain in the North Sinai Governorate of Egypt. At 910 meters above sea level, it is the highest mountain of the Khashm ar-Rih range.\nIt was named "Halal" because of the camels and sheep that used to graze around the mountain. The residents of the mountain are the Tarabin and Tiyaha tribes.""",
      "location":"The mountain is located 60km south of Al-Arish."
    },
    {
      "img": "img/Mountains/Marsa_Alam_-_Red_Sea.jpg",
      "name": "Al-Sukkari Mountain",
      "descrip": "Eastern Desert, Egypt.",
       "description":"The Sukari Mine is one of Egypt's largest gold mines, located in the eastern desert near the Red Sea.\nThe Sukari Mine is an open-pit and underground gold mining operation. It is owned and operated by Centamin, a gold mining company headquartered in London. The mine has been in operation since 2009 and has contributed significantly to Egypt's gold production.\n\nThe mining process involves extracting gold ore from the Sukari deposit, which is then processed to produce gold dore bars. The operation involves a combination of open-pit and underground mining methods.",
      "location":"""Sukari Mine is situated in the Eastern Desert of Egypt, approximately 700 kilometers southeast of Cairo. The mine is located in the Wadi al Allaqi region, near the Red Sea."""
    },
    {
      "img": "img/Mountains/142287-شايب-البنات.jpg",
      "name": "Shaiyb Al-Banat Mountain",
      "descrip": "Eastern Desert, Egypt.",
       "description":"Jebel Shayib, also known as Jebel Shayib el Banat, is the highest peak in mainland Egypt, towering at 2,187 meters. Its name translates to 'Mountain of the Old Man' in Arabic, believed to come from the light-colored granite summit block that resembles an elderly man's head with white hair.\nThe rugged peak offers a majestic view of the surrounding areas. On a clear day, you can see the Red Sea, the Sinai Peninsula, and even the Hejaz ranges of Arabia. The Nile Valley tablelands are also visible on the other side. Jebel Shayib is part of the Red Sea Mountains and is considered one of the most challenging mountains to climb in Egypt. There are several routes to the summit, all of which require a good level of fitness and experience.",
      "location":"Jebel Shayib is situated in the Eastern Desert of Egypt, around 40 kilometers away from the Red Sea, located between the cities of Hurghada and Safaga.",
      "tips":" it's best to avoid the scorching summer heat. The ideal season for climbing is between October to April when the weather is cooler."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomCategory(
        items: mountains
      ),
    );
  }
}
