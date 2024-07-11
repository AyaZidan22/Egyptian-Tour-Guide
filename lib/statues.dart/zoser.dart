import 'package:flutter/material.dart';
import 'package:ETG/statues.dart/statue_template.dart';

class ZoserPage extends StatelessWidget {
  const ZoserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStatues(
      img: "img/Statues/Djoser-rule.jpg",
      statueName: "Zoser",
      url: "https://www.youtube.com/watch?v=z6kN-wW8aF8",
      text2:
          """Djoser, also known as Djeser or Zoser, was an ancient Egyptian pharaoh who ruled during the 3rd Dynasty of the Old Kingdom, around the 27th century BC. He is credited as the founder of this epoch and is also referred to by the Hellenized names Tosorthros and Sesorthos by later historians.\n\nDjoser was the son of King Khasekhemwy and Queen Nimaathap, though the exact details of his ascension to the throne are unclear due to discrepancies in ancient records. Some Ramesside king lists suggest a predecessor named Nebka, but this connection is debated among Egyptologists due to conflicting Horus names.\n\nDjoser is most renowned for commissioning the construction of the Step Pyramid at Saqqara, which is the earliest colossal stone building in ancient Egypt. This pyramid, designed by his vizier Imhotep, represented a monumental leap in architectural technology and cultural significance. The Step Pyramid complex also included a range of subsidiary buildings and structures, demonstrating Djoser's innovative approach to royal funerary complexes.\n\nOne of the most significant artifacts associated with Djoser is his life-size statue found in the serdab (a type of burial chamber) on the east side of the Step Pyramid. Originally painted, this statue is the oldest known life-size statue in Egypt. Despite damage from ancient robbers who removed its inlaid eyes made of rock crystal and obsidian, the statue's pedestal remains inscribed with Djoser's titles and his Horus name Netjerkhet, meaning "His body is divine." \n\nDjoser's reign marked a pivotal period in ancient Egyptian history. His innovations in architecture and administration set the stage for the prosperity and cultural achievements of the Old Kingdom. His centralized rule and religious reforms contributed to the stability and grandeur that defined Egypt's royal authority for centuries to come. Thus, Djoser remains a key figure in shaping Egypt's cultural and architectural legacy.""",
    );
  }
}
