import 'package:flutter/material.dart';
import 'package:ETG/detail_pages.dart/detail_template.dart';

class LightShows extends StatelessWidget {
  const LightShows({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDetailPage(
      img: "img/TopActivities/sound-and-lights-hows.webp",
      itemName: 'Sound And Light Shows',
      description:
          """Egypt is famous for its unique sites and activities, and another fantastic part of visiting Egypt is the sound and light shows at prominent historical locations. Many sound and light shows are held across Egypt, including at Philae, Abu Simbel, the citadels in Cairo and Taba, and the Pyramids and Luxor. The performances are a fantastic spectacle that tells the story of Egypt using the latest multimedia technology, and up-to-date information on them is available on the official website, www.soundandlight.show 
          \nState-of-the-art technology is used, and projection systems and laser shows take you on a fantastic journey into the past.
\n\n'Some of the most famous sound and light shows held across Egypt are:'
\n- The sound and light show at the Great Pyramids at Giza began in 1961. They illustrated the story of the Sphinx, which has been the guardian of the city of the dead for thousands of years. It then follows the building of the pyramids and tells the story of history and many famous people from Egypt.
\n- The sound and light show at Karnak in Luxor began in 1972. It starts with the story of the birth of Thebes and the construction of the world-famous Karnak Temple. The achievements of some great pharaohs are also displayed poetically.
\n- The sound and light show at Abu Simbel began in 2000. It's the most recent show in Egypt and uses the latest sound and light technology. The project is managed by professionals who use the latest technology to produce excellent sound and light effects.
\n- The sound and light show at Edfu started in 2010. This show illustrates the building of the Edfu temple, which is characterized by its massive construction and magnitude. Since its discovery, the temples have always been full of tourists and visitors.
\n- The sound and light show at Philae in Aswan started in 1985. Viewers are taken on a Nile cruise, which helps them discover the natural beauty and arrive at Philae Island. The show tells the story of the construction and then the restoration of the temples and also tells the history of Aswan. Also shown are the grandeur of Noba, The Sacredness of The Nile, and the loyalty and nobility of Isis's message.""",
    );
  }
}
