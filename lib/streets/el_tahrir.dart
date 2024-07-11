import 'package:ETG/streets/street_template.dart';
import 'package:flutter/material.dart';

class ElTahrirPage extends StatelessWidget {
  const ElTahrirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStreets(
      streetName: "El Tahrir",
      url: "https://www.youtube.com/watch?v=2jUKzxKjMx4",
      img: "img/streets/شارع-التحرير.jpg",
      maintext:
          """El Tahrir Street, also known as Tahrir Square, is a famous public square located in the heart of Cairo, Egypt. It has played a significant role in the country's history, particularly during major political events and uprisings.
\nThe origins of the street date back the reign of Khedive Ismail, and it was originally known as Khedive Ismail, then it was renamed Midan Al-Ismailiya.In the 1950s, it was renamed Tahrir Square (meaning "Liberation Square" in Arabic) after the Egyptian Revolution of 1952 that overthrew the monarchy.
\nThe square gained global prominence during the 2011 Egyptian revolution, also known as the "Arab Spring" protests. Starting on January 25, 2011, massive demonstrations took place in Tahrir Square, demanding the resignation of then-president Hosni Mubarak. After 18 days of sustained protests, Mubarak stepped down on February 11, 2011, marking a pivotal moment in Egypt's transition to democracy.
\nFollowing the 2011 revolution, Tahrir Square has continued to be a site of political gatherings, protests, and celebrations in Egypt. It remains an important public space and symbol of the country's ongoing struggle for political and social change.
\nThe square is surrounded by several important buildings, including the Egyptian Museum, the headquarters of the Arab League, and the Mugamma administrative building. El Tahrir Street, which borders the square, is a major commercial and transportation hub in central Cairo. """,
    );
  }
}
