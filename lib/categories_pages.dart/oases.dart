import 'package:flutter/material.dart';
import 'package:ETG/categories_pages.dart/category.dart';

class Oases extends StatefulWidget {
  const Oases({super.key});

  @override
  State<Oases> createState() => _OasesState();
}

class _OasesState extends State<Oases> {
  List<Map<String, dynamic>> oases = [
    {
      "img": "img/Oases/Siwa-Oasis.png",
      "name": "Siwa Oasis",
      "descrip": "Siwa, Egypt.",
      "description":
          """Siwa Oasis is a breathtaking natural paradise located in the heart of the Western Desert of Egypt, near the border with Libya. It is renowned for its serene beauty, lush date palm groves, and crystal-clear springs. The oasis is surrounded by stunning sand dunes and rocky desert landscapes, offering visitors a peaceful retreat in the midst of the desert. Siwa is also famous for its rich cultural heritage, including ancient archaeological sites, traditional mud-brick villages, and unique local customs.""",
      "location":
          "Siwa Oasis is situated in the northwestern part of Egypt, near the border with Libya. It is approximately 560 kilometers (350 miles) southwest of Cairo. Accessible primarily by road, the journey from Cairo typically takes around 8 to 10 hours by car or bus, depending on the route taken and road conditions.",
      "latitude": 29.2032,
      "longitude": 25.5195
    },
    {
      "img": "img/Oases/Wadi El-Rayan.jpg",
      "name": "Wadi El-Rayan Oasis",
      "descrip": "Fayoum, Egypt.",
      "description":
          "Wadi El Rayan is known for its picturesque scenery, with turquoise blue waters contrasting against the golden sands of the surrounding desert. The area is rich in biodiversity, home to various species of birds, mammals, and plants. The highlight of Wadi El Rayan is its waterfalls, formed by the flow of water from the upper lake to the lower lake, creating a serene and tranquil atmosphere amidst the desert landscape. Visitors can enjoy activities such as swimming, picnicking, birdwatching, and hiking while taking in the natural beauty of the area.",
      "location":
          "Wadi El Rayan is situated in the Western Desert of Egypt, specifically in the Fayum Governorate. It's accessible by road from Cairo, with a journey of approximately 2-3 hours depending on traffic and road conditions.",
      "latitude": 29.2728,
      "longitude": 30.3296
    },
    {
      "img": "img/Oases/Bahariya_oasia.jpg",
      "name": "Al-Wahat Al-Bahriya Oasis",
      "descrip": "Western Desert, Egypt.",
      "description":
          "Al-Wahat Al-Bahriya Oasis also known as the Western Desert Oases,it's offer a stark contrast to the surrounding desert landscape, providing a haven of greenery and life in an otherwise arid environment. Visitors can explore the narrow streets of the oasis towns, visit local markets, and learn about the rich history and culture of the region. The oases are also home to several archaeological sites, including ancient temples, tombs, and rock formations adorned with prehistoric rock art.",
      "location":
          "The Western Desert Oases are located in the Western Desert of Egypt, to the west of the Nile River and the Nile Valley. They are situated at varying distances from Cairo, with Bahariya being the closest at approximately 370 kilometers southwest of the capital, and Kharga being the farthest at around 550 kilometers to the south.",
      "latitude": 28.3500,
      "longitude": 28.8833
    },
    {
      "img": "img/Oases/Kharga_Oasis.jpg",
      "name": "Al-Wahat Al-Kharijah Oasis",
      "descrip": "Western Desert, Egypt.",
      "description":
          "Al-Wahat Al-Kharijah Oasis also known as the Outer Oases or the New Valley Governorate.\nThe Outer Oases offer a blend of natural beauty, ancient history, and cultural heritage. These oasis towns are characterized by lush palm groves, natural springs, and mudbrick architecture. The towns serve as agricultural centers, with date palm cultivation being a prominent industry. The region is also home to numerous archaeological sites, including ancient Egyptian tombs and temples, Roman forts, and Islamic-era settlements. Visitors can explore the narrow streets of the oasis towns, visit local markets, and experience the traditional lifestyle of the residents.",
      "location":
          "The Outer Oases are located in the Western Desert of Egypt, to the west of the Nile River and the Nile Valley. The region is bordered by Libya to the west and Sudan to the south. The distance from Cairo to the Outer Oases varies depending on the specific oasis town, with Kharga being approximately 570 kilometers southwest of Cairo, Dakhla around 660 kilometers, and Farafra approximately 640 kilometers.",
      "latitude": 25.3242,
      "longitude": 30.5789
    },
    {
      "img": "img/Oases/Dakhla_Osasis.jpg",
      "name": "Dakhla Oasis",
      "descrip": "Western Desert, Egypt.",
      "description":
          "Is one of the outer oases in the Western Desert of Egypt, known for its natural beauty and rich history.\nDakhla is characterized by a fertile oasis surrounded by sandy desert, with palm trees and natural springs that are an important source of water in this part of the desert. Dakhla is also renowned for its ancient history, hosting many archaeological sites such as temples and tombs from the Pharaonic, Roman, and Islamic eras. The traditional architecture of the houses and buildings adds a special charm to the city.",
      "location":
          "The city of Dakhla is located in the Western Desert of Egypt, about 660 kilometers southwest of Cairo. It is bordered by the Farafra Oasis to the north and the Greater Dakhla region to the south.",
      "latitude": 25.5325,
      "longitude": 28.9500
    },
    {
      "img": "img/Oases/Farafra-Oasis.jpg",
      "name": "Farafra Oasis",
      "descrip": "Western Desert, Egypt.",
      "description":
          "Farafra Oasis, also known simply as Farafra, is a remote desert oasis located in the Western Desert of Egypt. It is renowned for its stunning natural landscapes, including vast sand dunes, palm groves, and unique rock formations. The oasis is home to a small community of inhabitants who rely on agriculture, particularly date palm cultivation, for their livelihoods. Farafra is also known for its rich cultural heritage, with several archaeological sites dating back to ancient times, including the White Desert (also known as the Sahara el Beyda), famous for its surreal white limestone rock formations.",
      "location":
          "Farafra Oasis is situated in the New Valley Governorate in the Western Desert of Egypt, approximately 640 kilometers southwest of Cairo. It is bordered by the Dakhla Oasis to the north and the Bahariya Oasis to the northeast.",
      "latitude": 27.0567,
      "longitude": 27.9703
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomCategory(items: oases),
    );
  }
}
