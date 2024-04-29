import 'package:flutter/material.dart';
import 'package:travelapp/categories_pages.dart/category.dart';

class Beaches extends StatefulWidget {
  const Beaches({super.key});

  @override
  State<Beaches> createState() => _BeachesState();
}

class _BeachesState extends State<Beaches> {
  List<Map<String, String>> beaches = [
    {
      "img": "img/Beaches/mahmya_island.jpg",
      "name": "Mahmya Island",
      "descrip": "Hurghada, Egypt",
      "description":
          '''Mahmya Island is a picturesque island renowned for its crystal-clear turquoise waters, pristine sandy beaches, and vibrant marine life. It offers visitors a serene and idyllic escape, perfect for swimming, snorkeling, and sunbathing. The island is surrounded by coral reefs teeming with colorful fish and other marine creatures, making it a paradise for underwater enthusiasts. Mahmya Beach is equipped with sun loungers, umbrellas, and beachside restaurants serving delicious seafood and refreshing drinks.''',
      "location":
          '''Mahmya Island is situated in the Red Sea, approximately 7 kilometers off the coast of Hurghada, Egypt. It is easily accessible by boat from Hurghada Marina, with regular ferry services available for visitors.''',
    },
    {
      "img": "img/Beaches/agiba_beach.jpg",
      "name": "Agiba Beach",
      "descrip": "Mersa Matruh, Egypt",
      "description":
          """Agiba beach known as Cleopatra's Beach, is a stunning coastal destination located on the Mediterranean Sea in the Matrouh Governorate of Egypt. Agiba Beach is famous for its breathtaking natural beauty, characterized by crystal-clear turquoise waters, pristine sandy shores, and rugged cliffs overlooking the sea. The name 'Agiba' means 'miracle' in Arabic, which aptly describes the aweinspiring scenery of this coastal paradise. The beach is surrounded by rocky formations and caves, adding to its charm and allure. Agiba Beach is a popular spot for sunbathing, snorkeling, and photography, offering unforgettable views of the Mediterranean Sea.""",
      "location":
          """Agiba Beach is located near the town of Marsa Matrouh, approximately 24 kilometers west of the city center. It is situated along the northern coast of Egypt, overlooking the Mediterranean Sea. The beach is easily accessible by road, with parking available nearby.""",
    },
    {
      "img": "img/Beaches/sharm_el_luli.jpg",
      "name": "Sharm El-Luli",
      "descrip": "Mersa Alam, Egypt",
      "description":
          "Sharm El Luli Beach is renowned for its pristine white sandy shores, crystalclear turquoise waters, and vibrant coral reefs. Nestled within a protected bay, the beach offers calm and shallow waters ideal for swimming, snorkeling, and other water activities. Visitors can explore the colorful marine life just off the shore, including tropical fish, coral gardens, and occasional sea turtles. The beach is surrounded by natural scenery, with palm trees providing shade and a tranquil atmosphere. Sharm El Luli is often described as a hidden gem, offering a serene and unspoiled coastal experience away from the crowds.",
      "location":
          "Sharm El Luli Beach is located on the Red Sea coast of Egypt, approximately 60 kilometers south of Marsa Alam. It is situated within the Wadi El Gamal National Park, a protected area known for its biodiversity and natural beauty. The beach is accessible by road, with parking available nearby."
    },
    {
      "img": "img/Beaches/sahl_hasheesh_beach.jpg",
      "name": "Sahl Hasheesh",
      "descrip": "Hurghada, Egypt",
      "description":
          """Sahl Hasheesh is a premier beach resort destination offering visitors a luxurious and upscale experience. The resort boasts pristine sandy beaches, clear turquoise waters, and a tranquil atmosphere, making it an ideal retreat for relaxation and recreation. Sahl Hasheesh is renowned for its lavish hotels, upscale restaurants, and vibrant nightlife, catering to discerning travelers seeking a high-end vacation experience. In addition to beach activities such as swimming and sunbathing, visitors can enjoy a variety of water sports, spa treatments, golfing, and other recreational activities. The resort also features a picturesque promenade lined with shops, cafes, and entertainment venues, providing ample opportunities for leisurely strolls and indulgent shopping experiences.""",
      "location":
          """Sahl Hasheesh is situated along the Red Sea coast of Egypt, approximately 18 kilometers south of Hurghada. It occupies a prime location on a picturesque stretch of coastline, surrounded by desert landscapes and stunning sea views. The resort is easily accessible by road from Hurghada International Airport and other major cities in Egypt."""
    },
    {
      "img": "img/Beaches/el_gouna.jpg",
      "name": "El Gouna",
      "descrip": "El Gouna, Egypt",
      "description":
          """El Gouna is a picturesque seaside destination offering visitors a luxurious and laid-back atmosphere. The town is characterized by its charming architecture,featuring traditional Nubian-style buildings adorned with vibrant colors and intricate designs. El Gouna is built on a series of islands and lagoons interconnected by canals, giving it a unique and scenic waterfront setting. The town boasts pristine sandy beaches, clear turquoise waters, and a vibrant underwater ecosystem, making it a paradise for beach lovers and water sports enthusiasts. In addition to its natural beauty, El Gouna offers a wide range of amenities and attractions, including world-class hotels, upscale restaurants, chic cafes, designer boutiques, golf courses, spas, and vibrant nightlife venues. The town also hosts cultural events, festivals, and water sports competitions throughout the year, providing ample entertainment for visitors of all ages.""",
      "location":
          """El Gouna is located along the Red Sea coast of Egypt, approximately 25 kilometers north of Hurghada. It occupies a prime location on a scenic stretch of coastline, surrounded by desert landscapes and stunning sea views. The town is easily accessible by road from Hurghada International Airport and other major cities in Egypt."""
    },
    {
      "img": "img/Beaches/ras_um_sid.jpg",
      "name": "Ras Um Sid",
      "descrip": "Sharm El Sheikh",
      "description":
          """Ras Um Sid is celebrated for its stunning underwater scenery, including vibrant coral reefs, colorful marine life, and dramatic underwater landscapes. The site features a steep wall that plunges into the depths of the Red Sea, offering divers and snorkelers the opportunity to explore a diverse array of marine ecosystems. Visitors can encounter a variety of marine species, including tropical fish, reef sharks, rays, and sea turtles, amidst the coral gardens and rocky outcrops. Ras Um Sid is known for its crystalclear waters and excellent visibility, making it an ideal destination for underwater photography and marine observation.""",
      "location":
          """Ras Um Sid is situated along the Red Sea coast of Egypt, near the resort town of Sharm El Sheikh. It is located approximately 10 kilometers south of the city center, within easy reach of major hotels and tourist facilities in the area. The site is accessible by road, with parking available nearby for visitors."""
    },
    {
      "img": "img/Beaches/nuweiba.jpg",
      "name": "Nuweiba",
      "descrip": "Nuweiba, Egypt",
      "description":
          "Nuweiba is known for its tranquil and unspoiled natural beauty, making it a haven for travelers seeking relaxation and adventure off the beaten path. The town boasts pristine sandy beaches, clear turquoise waters, and stunning mountain backdrops, creating a picturesque setting for beachgoers and nature enthusiasts. Nuweiba offers a more rustic and authentic Egyptian experience compared to some of the more developed resort towns in the region. Visitors can enjoy a range of outdoor activities, including swimming, snorkeling, diving, camel trekking, and desert safaris. The town is also a gateway to nearby attractions such as the Colored Canyon and the ancient ruins of the Pharaoh's Island.",
      "location":
          "Nuweiba is located on the eastern coast of the Sinai Peninsula, along the Gulf of Aqaba. It is situated approximately 180 kilometers north of Sharm El Sheikh and 70 kilometers south of Taba. The town is easily accessible by road from major cities and airports in the region, with regular bus and taxi services available for transportation."
    },
    {
      "img": "img/Beaches/ras_abu_galoum.jpg",
      "name": "Ras Abu Galoum",
      "descrip": "Dahab, Egypt",
      "description":
          "Ras Abu Galoum is celebrated for its pristine coral reefs, clear turquoise waters, and dramatic coastal landscapes. The site is part of the Ras Abu Galoum Protected Area, which encompasses both terrestrial and marine ecosystems. Visitors to Ras Abu Galoum can enjoy a range of outdoor activities, including snorkeling, diving, swimming, hiking, and camel trekking. The area is home to diverse marine life, including colorful coral formations, tropical fish, rays, and occasional reef sharks. Ras Abu Galoum is also known for its rugged desert scenery, with towering mountains and sweeping coastal cliffs providing a picturesque backdrop for outdoor adventures.",
      "location":
          "Ras Abu Galoum is located along the eastern coast of the Sinai Peninsula, between the towns of Dahab and Nuweiba. It is situated approximately 15 kilometers north of Dahab and 40 kilometers south of Nuweiba. The site is accessible by road from both towns, with various transportation options available, including taxis, private transfers, and organized tours."
    },
    {
      "img": "img/Beaches/fjord_bay_taba.jpg",
      "name": "Fjord Bay",
      "descrip": "Taba, Egypt",
      "description":
          "Fjord Bay is renowned for its stunning natural beauty, tranquil atmosphere, and clear turquoise waters. The beach is nestled within a secluded cove surrounded by towering cliffs, creating a sense of privacy and exclusivity for visitors. The bay is named after its unique geological formation, resembling a fjord with its narrow inlet and sheltered waters. Fjord Bay offers visitors the opportunity to relax on soft sandy shores, swim in the calm and clear waters, and explore the surrounding rocky coastline. The bay is also a popular spot for snorkeling and diving, with vibrant coral reefs and diverse marine life just offshore.",
      "location":
          "Fjord Bay is located on the eastern coast of the Sinai Peninsula, near the town of Taba Heights and the border with Israel. It is situated approximately 20 kilometers south of Taba and 70 kilometers north of Dahab. The bay is accessible by road from Taba and other nearby towns, with parking available nearby for visitors."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomCategory(
        items: beaches,
      ),
    );
  }
}
