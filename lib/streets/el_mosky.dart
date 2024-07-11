import 'package:ETG/streets/street_template.dart';
import 'package:flutter/material.dart';

class ElMoskyPage extends StatelessWidget {
  const ElMoskyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStreets(
      streetName: "El-Mosky",
      url: "https://www.youtube.com/watch?v=R94DX8bdebU",
      img: "img/streets/الموسكي.jpg",
      maintext:
          """El-Mosky Street is a historic commercial thoroughfare located in the heart of Islamic Cairo, Egypt.
\nThe street traces its origins back to the Fatimid era in the 10th century CE, The name "Al-Mosky" was given to this quarter in reference to Prince Izz al-Din Mosk, a relative of Sultan Saladin the Ayyubid. He was the one who built the famous bridge known as the Mosky Bridge. Prince Izz al-Din Mosk died in Damascus. When the French Campaign arrived in Egypt in 1798, the soldiers of the Campaign demolished the houses of the princes and the fugitives outside Cairo, including the Mosky Bridge, and extended a road from it to the Azbak Mosque Square, and this road is currently known as Al-Mosky Street.
\nIt emerged as a major marketplace and trade route in the newly founded city of Cairo. During the era of Muhammad Ali Pasha, the alleys and streets of the area were widened, and the houses were numbered for the first time. The streets were named, and the Azbakiyya Hospital was renovated and made an annex to the School of Medicine and Obstetrics at the Al-Aini Palace.""",
    );
  }
}
