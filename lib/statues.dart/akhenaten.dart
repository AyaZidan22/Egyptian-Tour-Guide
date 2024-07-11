import 'package:flutter/material.dart';
import 'package:ETG/statues.dart/statue_template.dart';

class AkhenatenPage extends StatelessWidget {
  const AkhenatenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStatues(
      img: "img/Statues/Akhenaten.jpg",
      statueName: "Akhenaten",
      url: "https://www.youtube.com/watch?v=yIHpejiaSzo",
      text2:
          """Akhenaten, originally known as Amenhotep IV before the fifth year of his reign, ruled ancient Egypt from approximately 1353 to 1336 BCE (some sources suggest 1351 to 1334 BCE). He was the tenth pharaoh of the 18th Dynasty of the New Kingdom period. Akhenaten is perhaps best known for his radical religious reforms, which centered around the worship of the sun disc, Aten, hence his name Akhenaten, meaning "beneficial to Aten." \n\nReligious Reforms and Atenism: Akhenaten's reign marked a profound shift in ancient Egyptian religion. He abandoned the traditional polytheistic worship of many gods, including Amun, in favor of Atenism, a monotheistic or monolatristic belief focused solely on Aten as the supreme deity.Aten was considered not just a god but the physical representation of the sun's rays, symbolizing life and creativity.\n\nScholars debate the exact nature of Atenism. Some view it as a strict form of monotheism, while others suggest it could have been monolatristic (acknowledging the existence of other gods while promoting Aten above all) or henotheistic (believing in the existence of many gods but focusing on Aten as the supreme god).\n\nCultural and Architectural Innovations: Akhenaten's religious reforms were accompanied by significant cultural changes. He moved the royal court and religious center from Thebes to a newly constructed city called Akhetaten (modern-day Amarna), which was dedicated to the worship of Aten. This city featured unique architectural styles and artistic representations, characterized by naturalistic and emotive depictions of the royal family and scenes of daily life.\n\nLegacy and Reception: After Akhenaten's death, his religious reforms were largely reversed. His monuments at Amarna were dismantled, his statues defaced or destroyed, and his name erased from official records. Traditional polytheistic practices, particularly the worship of Amun, were restored under his successors, notably Tutankhamun (formerly Tutankhaten), who was likely his son.\n\nAkhenaten's rediscovery in the late 19th century sparked significant public and scholarly interest.His reign has been described as enigmatic and revolutionary, with historians and Egyptologists debating his motivations and the lasting impact of his religious experiment. His association with Queen Nefertiti, the artistic styles of the Amarna period, and the foreshadowing of monotheistic concepts continue to fascinate researchers and the public alike, making Akhenaten one of the most intriguing figures in ancient Egyptian history.""",
    );
  }
}
