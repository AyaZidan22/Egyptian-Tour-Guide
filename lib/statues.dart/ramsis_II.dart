import 'package:flutter/material.dart';
import 'package:ETG/statues.dart/statue_template.dart';

class RamsisPage extends StatelessWidget {
  const RamsisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStatues(
      img: "img/Statues/ramsis.jpg",
      statueName: "Ramsis II",
      maintext1: "Information about statue",
      url: "https://www.youtube.com/watch?v=cKYDWBUd4ds",
      text1:
          "The Statue of Ramesses II, also known as Ramesses the Great, who ruled Egypt during the 19th dynasty (1279–1213 BC).\n\n Here are some details about this statue:\n\nMaterial: The statue is made of red granite\n\nHeight: The statue stands about 3.6 meters (12 feet) tall.\n\nDiscovery: The statue was discovered in several fragments by archaeologists working in Heliopolis in the 19th century. It was later reassembled.\n\nSignificance: The Statue of Ra Ramesses II is significant for several reasons. It is a powerful symbol of the might and grandeur of the New Kingdom of Egypt, particularly during the reign of Ramesses II, who is often regarded as one of Egypt's greatest pharaohs.",
      text2:
          "Ramses II ascended the throne at the young age of 25 and ruled for an impressive 66 years, making his reign one of the longest in ancient egyptian history. he was known for his military prowess and led several military campaigns in Nubia, Syria, and Canaan, defeated the enigmatic Sea People in a naval battle in the Nile Delta, and claimed victory over Egypt's Hittite rivals in the Battle of Kadesh\n\n(a conflict that ended with the signing of the world's first treaty).\n\nBeyond his military achievements, Ramsses II is also renowned for his monumental building projects. he initiated numerous construction project throughout egypt, including the famous temples of Abu Simbel, the Ramesseum, and the temple of Ramsses II.\n\nRamsses II also known for his extensive family, he had a large number of wives, including the renowned queen Nefertari, and numerous children, his family played an important role in his reign, and he took great care to secure their positions and create a dynasty that would last for generations.",
    );
  }
}
