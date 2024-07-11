import 'package:ETG/streets/street_template.dart';
import 'package:flutter/material.dart';

class ElAhramPage extends StatelessWidget {
  const ElAhramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStreets(
      streetName: "El Ahram",
      url: "https://www.youtube.com/watch?v=snTZC7EhJEk&t=108s",
      img: "img/streets/الاهرام.jpeg",
      maintext:
          """El Ahram Street, also known as Pyramids Street, is one of the most famous and historically significant streets in Cairo, Egypt. The street derives its name from its proximity to the Giza Pyramids, one of the most iconic landmarks in Egypt and the world.
\nDue to the desire of Ottoman Sultan Abdulaziz I in April 1863 to visit Egypt and enjoy a tour around the Giza Pyramids, Khedive Ismail quickly established the Pyramid Street and decorated it with trees on both sides. He also built arches and troughs through which water would flow for irrigation, And there are more than 30 hotels and more than 30 theaters and cabarets there.
\nLocation and Accessibility:
\nEl Ahram Street runs through the Giza Governorate, extending from the bustling downtown Cairo area toward the Giza Plateau.
\nIt is a major thoroughfare connecting central Cairo with the Giza Pyramids, making it a crucial route for both locals and tourists.
\nHistorical and Cultural Significance:
\nIt offers a direct route to the Giza Pyramids, including the Great Pyramid of Giza, the Pyramid of Khafre, and the Pyramid of Menkaure.
\nSound and Light Show: An evening show at the Giza Pyramids that tells the history of ancient Egypt through light and sound projections.
\nNearby Landmarks:
\nGrand Egyptian Museum: Located near the Giza Pyramids, this museum, It house an extensive collection of ancient Egyptian artifacts.
\nCairo University: One of Egypt's premier educational institutions, located a short distance from El Ahram Street.""",
    );
  }
}
