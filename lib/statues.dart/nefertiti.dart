import 'package:flutter/material.dart';
import 'package:ETG/statues.dart/statue_template.dart';

class NefertitiPage extends StatelessWidget {
  const NefertitiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStatues(
      img: "img/Statues/nefirtiti.webp",
      statueName: "Nefertiti",
      url: "https://www.youtube.com/watch?v=vNrQgdSYTZA",
      text2:
          """Nefertiti, whose name means "the beautiful one has come," lived during the 18th Dynasty of Ancient Egypt, approximately between 1370 and 1330 BC. She was renowned as the Great Royal Wife of Pharaoh Akhenaten, often depicted alongside him in the revolutionary religious reforms they initiated. Together, they introduced Atenism, a monotheistic worship centered on the sun disc, Aten, which was seen as the source of all life and power directly connected to the royal family. This period marked one of the most affluent eras in ancient Egyptian history, with lavish building projects and extensive artistic expression focused on Aten.\n\nAfter the death of Akhenaten, there is speculation among scholars that Nefertiti may have briefly ruled as pharaoh under the name Neferneferuaten before Tutankhamun ascended the throne. This period, if confirmed, would have been marked by significant political changes, including the abandonment of the city of Amarna, which was built by Akhenaten, and the return of the capital to Thebes.\n\nNefertiti gained modern fame largely due to the discovery of her exquisite bust, crafted by the sculptor Thutmose. This iconic artifact, now housed in Berlin's Neues Museum, is celebrated as one of the finest examples of ancient Egyptian artistry. It captures Nefertiti's serene beauty with a gracefully elongated neck and delicate features, reflecting the artistic style of the Amarna period.The bust's discovery in Thutmose's workshop complex in the early 20th century sparked worldwide fascination and has since become one of the most replicated images of ancient Egyptian art.\n\nNefertiti remains a compelling figure in both ancient history and contemporary culture, symbolizing not only artistic mastery but also the cultural and religious transformations that characterized the reign of Akhenaten and the Amarna period. Her legacy continues to inspire scholarly debate and artistic interpretation.""",
    );
  }
}
