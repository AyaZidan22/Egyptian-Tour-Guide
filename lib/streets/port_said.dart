import 'package:ETG/streets/street_template.dart';
import 'package:flutter/material.dart';

class PortSaidPage extends StatelessWidget {
  const PortSaidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStreets(
      streetName: "Port Said",
      url: "https://www.youtube.com/watch?v=viTlFhbUezU&t=18s",
      img: "img/streets/بورسعيد (2).jpg",
      maintext:
          """Port Said Street is named after the coastal city of Port Said, which is situated at the northern entrance of the Suez Canal. It extends from PortSaid Square (previously Fouad I Square) near the Maadi Police Station, and ends at the railroad tracks near Victoria Square.
\nThe street was previously known as Ahmed Abdel Wahab Pasha Street until 1956. Ahmed Abdel Wahab Pasha was the Finance Minister in the 1930s, and he built a large villa on this street.
\nPrior to that, the street was named after Sir Auckland Colvin, who was the first executive chairman of the Delta Land Company and a senior British official in the Egyptian government during the early years of the British occupation, when he was tasked with organizing Egypt's finances under Lord Cromer. Colvin wrote the book "The Making of Modern Egypt", which is considered one of the important references on the period following the British occupation of Egypt.""",
    );
  }
}
