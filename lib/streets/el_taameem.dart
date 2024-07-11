import 'package:ETG/streets/street_template.dart';
import 'package:flutter/material.dart';

class ElTaameemPage extends StatelessWidget {
  const ElTaameemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStreets(
      streetName: "El Ta'meem",
      img: "img/streets/شارع التأميم.jpg",
      url: "https://www.youtube.com/watch?v=cGvc9U5EoC0",
      maintext:
          """The name "El Ta'meem Street" in Port Fouad reflects an important period in Egypt's history, referring to the nationalization era led by President Gamal Abdel Nasser in the 1950s and 1960s. Here are some details about the significance of the street's name:
\nHistorical Background:
\nNationalization Era: This era in Egypt began in 1956 with the nationalization of the Suez Canal, a decision made by President Gamal Abdel Nasser. The nationalization of the canal was a key step in liberating the Egyptian economy from foreign control and asserting national sovereignty. The policy of nationalization extended to various economic sectors in Egypt, including industry, trade, and agriculture. It aimed to achieve social justice and a more equitable distribution of wealth among all citizens. Naming the street "El Ta'meem" expresses pride in the achievements of this era and highlights the role of Port Fouad and Egypt in achieving economic sovereignty.
\nNearby Landmarks:
\nSuez Canal: Visitors can watch ships crossing the Suez Canal from multiple viewing points along the city.
\nPor Fouad Grand Mosque: A major mosque in the city that provides religious services to the local community.
\nPor Fouad Bus Station: A major public transportation station that facilitates transportation within the city and to neighboring areas.
\nClub Complex: The Club Complex in Port Fouad is an important place that brings together many sports, social, and cultural clubs. The complex offers a variety of activities and services for residents and visitors.
""",
    );
  }
}
