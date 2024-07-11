import 'package:ETG/streets/street_template.dart';
import 'package:flutter/material.dart';

class AswanPage extends StatelessWidget {
  const AswanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStreets(
      streetName: "Aswan",
      img: "img/streets/اسوان.jpeg",
      maintext:
          """The name "Aswan Street" in Port Said is likely chosen to honor the historic city of Aswan in southern Egypt, known for its rich cultural heritage and its significance in Egypt's history.
\nHistorical Background:
\nAswan is one of Egypt's oldest cities, known for its archaeological sites, including the Philae Temple and the Unfinished Obelisk. In the 1960s, Aswan gained additional prominence with the construction of the Aswan High Dam, which significantly impacted Egypt's economy by providing hydroelectric power and controlling Nile flooding.
\nNearby Landmarks:
\nAswan Street Market: A bustling market area with numerous shops and stalls offering a variety of goods, including fresh produce, clothing, and household items. It is a lively place where locals and visitors can experience the vibrant atmosphere of Port Said.
\nCultural Center: A venue that hosts various cultural events, including exhibitions, theater performances, and workshops. It serves as a hub for promoting arts and culture in the city.
\nHistorical Buildings: Aswan Street features several buildings with historical significance, showcasing the architectural heritage of Port Said.
""",
    );
  }
}
