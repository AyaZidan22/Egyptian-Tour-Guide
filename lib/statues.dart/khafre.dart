import 'package:flutter/material.dart';
import 'package:travelapp/statues.dart/template.dart';

class KhafrePage extends StatelessWidget {
  const KhafrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStatues(
      img: "img/Statues/Khafre.webp",
      statueName: "Khafre",
      maintext1: "Information about statue",
      text1:
          "The Statue of Khafre, also known as the “khafre enthroned”, who ruled Egypt during the Fourth Dynasty of the Old Kingdom period, around 2559–2535 BC.\nHere are some details about this statue:\n\nMaterial: The statue is made of diorite, a hard, dark-grey to black volcanic rock.\n\nHeight: It stands at about 168 cm (5 feet 6 inches) tall.\n\nDepiction: The statue depicts Khafre wearing the nemes headcloth with the royal cobra on his forehead.\n\nDiscover: The statue was discovered in 1860 during excavations near the Great Sphinx of Giza in Egypt.",
      maintext2: "Information about Khafre's life",
      text2:
          "Khafre was the son of Pharaoh Khufu who built the Great Pyramid of Giza, Khafre married his sister Khamerernebti, Meresankh III, and perhaps two other queens.\n\nKhafre's reign is known for its monumental building projects, including the construction of the second-largest pyramid at Giza, known as the Pyramid of Khafre. This pyramid complex also includes the Great Sphinx, a colossal limestone statue with the body of a lion and the head of a pharaoh, which many consider to bear Khafre’s features.\n\nIn addition to his pyramid complex at Giza, Khafre is credited with building several other monuments, including temples and tombs in the vicinity of Giza and in other parts of Egypt.\n\nKhafre was succeeded by his son Menkaure, who continued the tradition of pyramid building at Giza.",
    );
  }
}
