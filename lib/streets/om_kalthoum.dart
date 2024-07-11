import 'package:ETG/streets/street_template.dart';
import 'package:flutter/material.dart';

class OmKalthoumPage extends StatelessWidget {
  const OmKalthoumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStreets(
      streetName: "Om Kalthoum",
      url: "https://www.youtube.com/watch?v=1ZB19Wx1_BE",
      img: "img/streets/كلثوم.webp",
      maintext:
          """Om Kalthoum Street is located in the Zamalek district of Cairo,Egypt. It reflects both the historical and modern aspects of Cairo, blending cultural heritage with contemporary urban living. Named after the legendary Egyptian singer Umm Kulthum, who is considered one of the greatest and most influential Arabic singers of the 20th century.
\nResidential and Commercial Area:
\nOm Kalthoum Street features a blend of residential apartments, boutiques, cafes, and restaurants.
\nThe area is popular among both locals and expatriates for its vibrant, cosmopolitan atmosphere.
\nNearby Landmarks:
\nCairo Opera House: A major cultural hub hosting concerts, operas, and ballets.
\nCairo Tower: Offers panoramic views of Cairo and the Nile River.
\nGezira Club: One of the oldest sporting clubs in Egypt, providing various sports and recreational facilities.
\nSome key facts about Om Kalthoum:
\nOm Kalthoum (1898-1975) was a renowned Egyptian singer, songwriter, and film actress. She was known for her powerful voice and emotional performances, and she remains a cultural icon in the Arab world.""",
    );
  }
}
