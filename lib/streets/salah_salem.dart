import 'package:ETG/streets/street_template.dart';
import 'package:flutter/material.dart';

class SalahSalemPage extends StatelessWidget {
  const SalahSalemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStreets(
      streetName: "Salah Salem",
      url: "https://www.youtube.com/watch?v=CQfuzuKd8CI",
      img: "img/streets/صلاح سالم.jpg",
      maintext:
          """Salah Salem Street in Cairo is Egypt’s most famous streets ever. The Street is known far and wide because it is connecting many of Cairo’s areas that lead to the main bridges of the city.
\nSalah Salem Street runs from Cairo airport to El-Malek El-Saleh tunnel. The Street is one of Cairo’s longest streets passing through three areas which are Madinet Nasr, Masr El-Gadidah, and El-Abbasia. Salah Salem is a two-way street, and it was built by Abdel El-Latif Al-Baghdadi on instruction from the Egyptian President Gamal Abdel Naser in the 1950s. It was called then El-Tariq El-Harbi Street, and most of its lands were cemeteries.
\nSalah Salem Street houses Oruba Palace, Baron Palace, and other significant places like the Cairo Stadium, the Egyptian Military Academy, Ministry of Defense, and the Cairo Airport.
\nSalah Salem street was named after one of the Egyptian free officers as the day in which Abdel El-Latif Al-Baghdadi finished the construction of Salah Salem road marked the anniversary of the officer’s death.
\nSome key facts about Salah Salem:
\nSalah Salem was of Sudanese origin, and he lived in Cairo since childhood. He graduated from Military School in 1940. After the 23rd of July revolution, he commanded the Egyptian army forces in Sudan. Salah Salem was also a politician and played an important role in signing the agreement of 12th of February with Britain on Sudan. After he quit politics, he worked in journalism.""",
    );
  }
}
