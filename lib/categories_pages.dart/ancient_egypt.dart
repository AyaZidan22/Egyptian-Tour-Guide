import 'package:ETG/categories_pages.dart/category.dart';
import 'package:flutter/material.dart';

class AncientEgypt extends StatefulWidget {
  const AncientEgypt({super.key});

  @override
  State<AncientEgypt> createState() => _AncientEgyptState();
}

class _AncientEgyptState extends State<AncientEgypt> {
  List<Map<String, dynamic>> ancientEgypt = [
    {
      "img": "img/ancientegypt/sphinx.webp",
      "name": "Pyramids of Giza & Sphinx",
      "descrip": "Giza, Egypt.",
      "url": "https://www.youtube.com/watch?v=u1S9p3IfCV0",
      "description":
          """The Pyramids of Giza and the Sphinx are iconic ancient Egyptian monuments located on the Giza Plateau, just outside Cairo. These structures represent some of the most famous and well-preserved remnants of ancient Egyptian civilization.
\n1.	Great Pyramid of Giza (Pyramid of Khufu): The largest of the three pyramids, the Great Pyramid was built for Pharaoh Khufu and is one of the Seven Wonders of the Ancient World. It stands approximately 146.6 meters (481 feet) tall.
\n2.	Pyramid of Khafre: Slightly smaller than the Great Pyramid, the Pyramid of Khafre is associated with Pharaoh Khafre and appears taller due to its elevated location on the bedrock. It includes remnants of the original smooth Tura limestone casing at its pinnacle.
\n3.	Pyramid of Menkaure: The smallest of the three main pyramids, the Pyramid of Menkaure was constructed for Pharaoh Menkaure. It is distinguished by its three subsidiary pyramids.
\n4.	The Sphinx: Adjacent to the pyramids, the Sphinx is a colossal limestone statue with the body of a lion and the head of a pharaoh, traditionally believed to represent Pharaoh Khafre. It is known for its impressive size and enigmatic expression.
""",
      "openingHours":
          "From 8:00 AM to 5:00 PM.\nHowever, these hours can vary, and it's advisable to check with official sources or the Ministry of Antiquities in Egypt for the most up-to-date information.",
      "location": "The Giza Plateau, located on the outskirts of Cairo, Egypt.",
      "tips":
          """It's recommended to arrive early to avoid crowds and take advantage of cooler temperatures.
          \nWear comfortable clothing and bring water, especially if you plan to explore the site extensively.
          \nGuided tours are available and can provide valuable insights into the history and significance of the pyramids and Sphinx.""",
      "latitude": 29.9753,
      "longitude": 31.1376
    },
    {
      "img":
          "img/ancientegypt/Step Pyramid of Saqqara & Saqqara Necropolis.webp",
      "name": "Step Pyramid of Saqqara",
      "descrip": "Saqqara, Egypt.",
      "url": "https://www.youtube.com/watch?v=pLBb9HRIQNI",
      "description":
          """The Step Pyramid of Djoser, also known as the Saqqara Pyramid, is one of the earliest and most significant pyramids in ancient Egyptian history. It was built for Pharaoh Djoser by the architect Imhotep during the 27th century BCE, marking the transition from mastaba-style tombs to the more iconic pyramid structures.
\nThe Step Pyramid stands at approximately 6 tiers, or steps, and originally reached a height of around 6 tiers, or steps, and originally reached a height of around 6 tiers, or steps, and originally reached a height of around 62 meters (203 feet). The pyramid has a distinctive appearance due to its stepped layers, which is a departure from the smooth-sided pyramids of later dynasties.
\nThe complex surrounding the Step Pyramid includes various structures such as courtyards, temples, and a mortuary complex. The Pyramid Texts, some of the oldest religious texts in Egypt, were inscribed in the subterranean chambers of the Step Pyramid.
""",
      "location":
          "The Step Pyramid is located in Saqqara, an archaeological site about 30 kilometers south of Cairo, Egypt. Saqqara is part of the Memphis Necropolis, a UNESCO World Heritage Site.",
      "tips":
          """Wear comfortable clothing and suitable footwear for exploring the archaeological site.
\nGuided tours are available and can provide insights into the historical and architectural significance of the Step Pyramid.
\nConsider visiting early in the day to avoid crowds and make the most of your experience.
""",
      "openingHours":
          "From 8:00 AM to 4:00 PM.\nHowever, these hours can vary, and it's advisable to check with official sources or the Ministry of Antiquities in Egypt for the most up-to-date information.",
      "latitude": 29.8713,
      "longitude": 31.2168
    },
    {
      "img": "img/ancientegypt/karnak.jpg",
      "name": "Karnak Temple",
      "descrip": "Luxor, Egypt.",
      "url": "https://www.youtube.com/watch?v=kKWS0efndOY",
      "description":
          """Karnak Temple is one of the most impressive and extensive temple complexes in Egypt, known for its vast size and architectural significance. Dedicated primarily to the god Amun, Karnak served as a religious center and a site for various ceremonies and festivals during the New Kingdom period (1550–1070 BCE). The temple complex underwent continuous construction and expansion by different pharaohs over several centuries.\n\nKey features of Karnak Temple include:\n\n•	Great Hypostyle Hall: This hall is renowned for its towering columns, with 134 columns in total. The central nave is taller than the outer ones, creating a dramatic visual effect.
\nPrecincts: Karnak is divided into different precincts, each with its own set of temples and structures. The most significant precincts are dedicated to Amun-Re, Mut, and Montu.
\nObelisks and Statues: Karnak has numerous obelisks, including the tallest surviving ancient Egyptian obelisk, originally erected by Hatshepsut. There are also statues, sphinxes, and other impressive sculptures throughout the complex.
""",
      "location":
          "Karnak Temple is located on the east bank of the Nile River, near Luxor, in southern Egypt. Luxor is often referred to as the 'world's greatest open-air museum' due to its wealth of ancient Egyptian monuments.",
      "tips":
          """Guided tours are available and recommended to gain a deeper understanding of the temple's history and significance.
          \nWear comfortable clothing, a hat, and sunscreen, as the site can be exposed to the sun.
          \nKarnak is vast, so plan enough time to explore the different precincts and structures.""",
      "openingHours":
          "From 6:00 AM to 5:30 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit.",
      "latitude": 25.7188,
      "longitude": 32.6573
    },
    {
      "img": "img/ancientegypt/Valley-Of-The-Kings.jpg",
      "name": "Valley Of The Kings",
      "descrip": "Luxor, Egypt.",
      "url": "https://www.youtube.com/shorts/LM3vYh1M1MQ",
      "description":
          """The Valley of the Kings is a renowned archaeological site in Egypt, situated on the west bank of the Nile River near Luxor. It served as the burial ground for many pharaohs and high-ranking officials during the New Kingdom period (1550–1070 BCE). The valley is known for its rich collection of tombs, including those of famous pharaohs such as Tutankhamun and Ramesses II.
\nKey features of the Valley of the Kings include:
\nTombs: The valley contains numerous rock-cut tombs, each adorned with intricate paintings and hieroglyphs depicting scenes from the deceased's journey to the afterlife. Notable tombs include Tutankhamun's (KV62), Ramesses II (KV7), and Seti I (KV17).
\nTutankhamun's Tomb: Discovered by Howard Carter in 1922, Tutankhamun's tomb is particularly famous for its well-preserved artifacts, including the golden mask covering the pharaoh's mummy.
\nRamesseum: The mortuary temple of Ramesses II is located near the entrance of the Valley of the Kings. Although not part of the valley itself, it is often visited by tourists.
""",
      "location":
          "The Valley of the Kings is located on the west bank of the Nile River, opposite modern-day Luxor (ancient Thebes). It is part of the ancient city of Thebes and is situated in the desert hills of the Theban Necropolis.",
      "tips":
          """Entrance tickets typically cover a limited number of tombs, with additional fees for special or more recently opened tombs.
\nPhotography inside the tombs is usually prohibited to preserve the ancient paintings.
\nGuided tours are available and recommended for a deeper understanding of the history and significance of the site.
""",
      "openingHours":
          "From 6:00 AM to 5:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit. ",
      "latitude": 25.7402,
      "longitude": 32.6014
    },
    {
      "img": "img/ancientegypt/Valley-of-the-queens.jpg",
      "name": "Valley Of The Queens",
      "descrip": "Luxor, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=hnhmNTPjLjI&ab_channel=ArpeggioBYOB",
      "description":
          """The Valley of the Queens, also known as Biban el-Harim, is an archaeological site in Egypt located on the west bank of the Nile River near Luxor. Similar to the Valley of the Kings, this area served as the burial ground for queens, princes, and other high-ranking individuals during the New Kingdom period (1550–1070 BCE). The valley contains numerous tombs with intricate decorations and paintings depicting scenes from the afterlife.
\nKey features of the Valley of the Queens include:
\nTombs: The valley contains over 90 known tombs, including those of prominent queens such as Nefertari, the principal wife of Ramesses II. The tombs are decorated with colorful frescoes illustrating religious rituals, scenes of daily life, and the journey to the afterlife.
\nTemple of Hathor: Located near the entrance of the valley, the Temple of Hathor is dedicated to the goddess Hathor and serves as a reminder of the religious significance of the site.
""",
      "location":
          " The Valley of the Queens is situated on the west bank of the Nile River, near Luxor, opposite modern-day Luxor (ancient Thebes). It is part of the Theban Necropolis and is adjacent to the Valley of the Kings.",
      "tips":
          """Entrance tickets typically cover a limited number of tombs, with additional fees for special or more recently opened tombs.
          \nGuided tours are available and recommended for a deeper understanding of the history and significance of the site.
          \nPhotography inside the tombs is usually prohibited to preserve the ancient paintings.""",
      "openingHours":
          "From 6:00 AM to 5:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit.",
      "latitude": 25.7277,
      "longitude": 32.5931
    },
    {
      "img": "img/ancientegypt/denderaext.jpg",
      "name": "Dendera Temple Complex",
      "descrip": "Luxor, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=AqLTiZmoLgE&ab_channel=NileInfinityTours",
      "description":
          """The Dendera Temple Complex is a well-preserved ancient Egyptian religious site located about 2.5 kilometers southeast of the town of Dendera, near Qena, in Upper Egypt. Dedicated to the goddess Hathor, the temple complex is one of the best-preserved examples of ancient Egyptian architecture and art.
\nKey features of the Dendera Temple Complex include:
\nHathor Temple: The main temple is dedicated to Hathor, the goddess of love, joy, and motherhood. It features a massive hypostyle hall with beautifully preserved columns, a sanctuary, and several chambers adorned with intricate carvings and reliefs.
\nDendera Zodiac: One of the notable features of the complex is the Dendera Zodiac, a large bas-relief depicting the constellations and astronomical elements. It is considered one of the earliest known representations of the zodiac.
\nMammisi (Birth House): Adjacent to the main temple is the Mammisi, a small chapel that symbolizes the birth of the god Horus and is associated with the divine birth of pharaohs.
\nTemple of the Birth of Isis: This smaller temple is dedicated to the birth of the goddess Isis and features scenes depicting the divine birth of Isis and her son Horus.
""",
      "location":
          "The Dendera Temple Complex is located in Dendera, near Qena, on the west bank of the Nile River in Upper Egypt. It is situated approximately 60 kilometers north of Luxor.",
      "tips":
          """Guided tours are available and recommended for a deeper understanding of the history and significance of the complex.
\nPhotography is generally allowed inside the complex, but additional fees may apply.
\nWear comfortable clothing and sunscreen, as the site can be exposed to the sun.
""",
      "openingHours":
          "From 6:00 AM to 5:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit.",
      "latitude": 26.1419,
      "longitude": 32.6702
    },
    {
      "img": "img/ancientegypt/Ramesseum.jpg",
      "name": "Ramesseum",
      "descrip": "Luxor, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=p0iJoJVPnos&ab_channel=ViajanteLivre%2FFreeTraveler",
      "description":
          """The Ramesseum is a vast mortuary temple dedicated to Pharaoh Ramesses II (also known as Ramesses the Great), located on the west bank of the Nile River near Luxor, Egypt. Built during the 13th century BCE, the temple served as a memorial to the pharaoh and a place for the worship of the god Ra-Harakhty.
\nKey features of the Ramesseum include:
\nColossal Statue of Ramesses II: The temple originally featured a seated colossal statue of Ramesses II, now in ruins but still impressive. The statue, along with other parts of the temple, showcases intricate carvings and hieroglyphs.
\nCourtyards and Halls: The Ramesseum includes a large open courtyard, pillared halls, and chambers adorned with reliefs depicting scenes from Ramesses II's military victories and religious rituals.
\nMortuary Temple Design: Like other mortuary temples, the Ramesseum was designed as a place for the pharaoh's funerary rituals and ceremonies. It included an offering chapel, storage rooms, and a hypostyle hall.
""",
      "location":
          "The Ramesseum is located on the west bank of the Nile River, near Luxor, Egypt. It is part of the Theban Necropolis and is situated between the Valley of the Kings and the Valley of the Queens.",
      "latitude": 25.7280,
      "longitude": 32.6105,
      "tips":
          """Guided tours are available and recommended for a deeper understanding of the history and significance of the temple.
\nWear comfortable clothing and sunscreen, as the site can be exposed to the sun.
\nThe Ramesseum is less crowded than some other famous temples in the area, providing a more serene visit.
""",
      "openingHours":
          "From 6:00 AM to 5:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/Luxor_Temple.jpg",
      "name": "Luxor Temple",
      "descrip": "Luxor, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=kye1IrQcadk&ab_channel=TravelPenguin",
      "description":
          """Luxor Temple is a magnificent ancient Egyptian temple located on the east bank of the Nile River in Luxor, Egypt. It is one of the best-preserved temples in Egypt and holds great historical and architectural significance. Originally built during the New Kingdom period, Luxor Temple was dedicated to the Theban Triad—Amun, Mut, and Khonsu.
\nKey features of Luxor Temple include:
\nAvenue of Sphinxes: The temple is connected to the Karnak Temple complex by an ancient avenue lined with sphinx statues, a portion of which has been reconstructed.
\nGreat Colonnade: Luxor Temple features a massive colonnade with towering columns and statues. The colonnade leads to the first pylon, an imposing structure adorned with intricate carvings.
\nCourtyards and Halls: The temple comprises various courtyards, halls, and sanctuaries, each with its own religious and architectural significance. Notable structures include the Birth Room and the Colonnade of Amenhotep III.
\nObelisks: Originally, Luxor Temple had two obelisks at its entrance, both of which were erected by Pharaoh Ramesses II. One of the obelisks still stands, while the other was transported to Paris and now stands at the Place de la Concorde.
""",
      "location":
          "Luxor Temple is situated in the heart of Luxor, on the east bank of the Nile River. It is part of the ancient city of Thebes and is conveniently located near the Luxor Museum.",
      "latitude": 25.6995,
      "longitude": 32.6391,
      "tips":
          """Guided tours are available and recommended for a deeper understanding of the history and significance of the temple.
\nLuxor Temple is often illuminated at night, offering a unique and enchanting experience.
\nWear comfortable clothing and sunscreen, as the site can be exposed to the sun.
""",
      "openingHours":
          "From 6:00 AM to 9:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit. "
    },
    {
      "img": "img/ancientegypt/Colossi-of-Memnon.jpg",
      "name": " Colossi of Memnon",
      "descrip": "Luxor, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=aUHOdkMO3ys&ab_channel=MichaelJiroch",
      "description":
          """The Colossi of Memnon are two massive stone statues of Pharaoh Amenhotep III, located on the west bank of the Nile River near Luxor, Egypt. These colossal statues once guarded the entrance to the pharaoh's mortuary temple but are now the only remnants of the temple complex. The statues depict Amenhotep III in a seated position and are renowned for their size and historical significance.
\nKey features of the Colossi of Memnon include:
\nSize: Each statue is approximately 18 meters (60 feet) tall and is carved from a single block of quartzite sandstone. The statues were originally even taller but suffered damage over the centuries.
\nHieroglyphic Inscriptions: The statues feature intricate hieroglyphic inscriptions on their thrones and legs, praising Amenhotep III and various gods.
\nLocation: The Colossi of Memnon are located on the plains of Thebes, west of the modern city of Luxor, near the Valley of the Kings.
""",
      "location":
          "The Colossi of Memnon are situated on the west bank of the Nile River, near Luxor, Egypt. They are located close to the modern town of Kom El-Hetan.",
      "latitude": 25.7206,
      "longitude": 32.6105,
      "tips":
          """The best time to visit is during the morning when the statues are bathed in sunlight.
\nThere is no entrance fee to view the Colossi of Memnon from the roadside.
\nGuided tours are available for those who wish to explore the surrounding archaeological sites.
""",
      "openingHours":
          "There are no specific opening hours for the Colossi of Memnon as they are outdoor monuments and can be viewed from the roadside at any time. However, the surrounding area may have specific visiting hours."
    },
    {
      "img": "img/ancientegypt/Medinet Habu.jpg",
      "name": "Medinet Habu",
      "descrip": "Luxor, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=cQfXyTY-GZY&ab_channel=TravelPenguin",
      "description":
          """Medinet Habu is an archaeological site located on the west bank of the Nile River near Luxor, Egypt. It is home to the mortuary temple of Ramesses III, one of the best-preserved temples in Egypt. The complex includes various structures such as the main temple, a palace, and other smaller buildings.
\nKey features of Medinet Habu include:
\nMortuary Temple of Ramesses III: The main temple is dedicated to the pharaoh Ramesses III and is adorned with intricate reliefs and hieroglyphs depicting scenes from the king's reign, military victories, and religious rituals.
\nGreat Temple Enclosure: The temple complex is surrounded by massive mudbrick walls, creating a fortified enclosure. The walls are decorated with reliefs and scenes depicting divine protection.
\nPalace of Medinet Habu: Adjacent to the temple is a palace believed to have been used for administrative and ceremonial purposes. The palace includes courtyards, halls, and living quarters.
\nChapel of Amun: Located within the temple complex is the Chapel of Amun, which was added by Ramesses IV. It is dedicated to the god Amun and features detailed carvings.""",
      "location":
          " Medinet Habu is situated on the west bank of the Nile River, near Luxor, Egypt. It is part of the Theban Necropolis and is located in the vicinity of the Valley of the Kings and the Valley of the Queens.",
      "latitude": 25.7184837927,
      "longitude": 32.6004175983,
      "tips":
          """Guided tours are available and recommended for a deeper understanding of the history and significance of the temple.
\nWear comfortable clothing and sunscreen, as the site can be exposed to the sun.
\nThe site is less crowded than some other famous temples, providing a more serene visit.
""",
      "openingHours":
          "From 6:00 AM to 5:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/temple-of-seti.jpg",
      "name": "Temple Of Seti I",
      "descrip": "Luxor, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=fH3D6kt6it8&ab_channel=ControlledRefractions",
      "description":
          """The Temple of Seti I, also known as the Temple of Abydos, is an ancient Egyptian temple located in Abydos, Egypt. It is dedicated to Seti I, the pharaoh of the Nineteenth Dynasty, and is renowned for its well-preserved reliefs and inscriptions. While the temple was initiated by Seti I, it was completed by his son, Ramesses II.
\nKey features of the Temple of Seti I include:
\nGreat Hypostyle Hall: The temple features a large hypostyle hall with impressive columns and detailed carvings depicting religious scenes. The hall is supported by rows of massive columns.
\nOsireion: Adjacent to the main temple is the Osireion, an enigmatic underground structure resembling a cenotaph. It is often associated with the Osiris myth and is believed to have had symbolic significance in the afterlife rituals.
\nChapels and Sanctuaries: The temple complex includes various chapels and sanctuaries dedicated to different deities, with intricate carvings and inscriptions that provide valuable insights into ancient Egyptian religious practices.
""",
      "location":
          "The Temple of Seti I is located in Abydos, an ancient city in Upper Egypt. Abydos is approximately 160 kilometers north of Luxor. The temple is part of the larger Abydos archaeological site, which includes other significant structures like the Osireion and the nearby Temple of Ramses II.",
      "latitude": 25.7327,
      "longitude": 32.6282,
      "tips":
          """Guided tours are available and recommended for a deeper understanding of the history and significance of the temple.
\nAbydos is an important archaeological site with various temples and structures, so plan enough time to explore the entire area.
\nWear comfortable clothing and sunscreen, as the site can be exposed to the sun.
""",
      "openingHours":
          " From 6:00 AM to 5:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/Tomb of Ramses III.jpg",
      "name": "Tomb of Ramses III (KV 11)",
      "descrip": "Luxor, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=tgPab9k-NGg&ab_channel=RichardArkley",
      "description":
          """The Tomb of Ramesses III, designated as KV11 (King's Valley 11), is an ancient Egyptian tomb located in the Valley of the Kings on the west bank of the Nile near Luxor. It is the final resting place of Pharaoh Ramesses III, who reigned during the 20th Dynasty (c. 1186–1155 BCE). The tomb is notable for its well-preserved decorations and vivid wall paintings that depict scenes from the pharaoh's journey to the afterlife.
\nKey features of the Tomb of Ramesses III (KV11) include:
\nBurial Chamber: The tomb's burial chamber houses the sarcophagus of Ramesses III. The chamber is adorned with intricate carvings and paintings, including scenes from the Book of Gates and the Book of Caverns.
\nCorridor and Side Chambers: The tomb consists of a long corridor leading to the burial chamber, with several side chambers along the way. These side chambers served various religious and funerary purposes, containing offerings, statues, and other items.
\nCeiling Decoration: The ceiling of the tomb features a celestial pattern and scenes of deities, reinforcing the pharaoh's connection with the divine realm.
""",
      "location":
          " The Tomb of Ramesses III (KV11) is situated in the Valley of the Kings, an ancient necropolis on the west bank of the Nile River near Luxor, Egypt. The Valley of the Kings is renowned for its royal tombs, including those of Tutankhamun and Seti I.",
      "latitude": 25.739889,
      "longitude": 32.601083,
      "tips":
          """Photography may be restricted inside the tombs to preserve the paintings. Check local regulations and guidelines.
\nGuided tours are available and recommended for a deeper understanding of the tomb's historical and religious significance.
\nWear comfortable clothing and sturdy shoes, as the terrain around the Valley of the Kings can be uneven.
""",
      "openingHours":
          "from 6:00 AM to 4:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/Tomb-of-Ramses-VI.jpg",
      "name": "Tomb of Ramses VI (KV 9)",
      "descrip": "Luxor, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=1k7wilEPsyU&ab_channel=MattShimer",
      "description":
          """The Tomb of Ramesses VI, designated as KV9 (King's Valley 9), is an ancient Egyptian tomb located in the Valley of the Kings on the west bank of the Nile near Luxor. It is the burial place of Pharaoh Ramesses VI, who reigned during the 20th Dynasty (c. 1145–1137 BCE). The tomb is known for its well-preserved decorations, intricate reliefs, and vibrant colors that depict religious and funerary scenes.
\nKey features of the Tomb of Ramesses VI (KV9) include:
\nBurial Chamber: The tomb's burial chamber contains the sarcophagus of Ramesses VI. The walls are adorned with scenes from the Book of Caverns, the Book of Gates, and other funerary texts, illustrating the pharaoh's journey to the afterlife.
\nCorridor and Side Chambers: The tomb consists of a long corridor leading to the burial chamber, with several side chambers along the way. These side chambers served various purposes, including the storage of funerary equipment and offerings.
\nCeiling Decorations: The ceilings feature intricate astronomical motifs and representations of various deities, emphasizing the pharaoh's divine connections.
""",
      "location":
          "The Tomb of Ramesses VI (KV9) is situated in the Valley of the Kings, an ancient necropolis on the west bank of the Nile River near Luxor, Egypt. The Valley of the Kings is home to numerous royal tombs, including those of famous pharaohs such as Tutankhamun and Seti I.",
      "latitude": 25.74037,
      "longitude": 32.601277,
      "tips":
          """Photography may be restricted inside the tombs to preserve the paintings. Check local regulations and guidelines.
\nGuided tours are available and recommended for a deeper understanding of the tomb's historical and religious significance.
\nWear comfortable clothing and sturdy shoes, as the terrain around the Valley of the Kings can be uneven.
""",
      "openingHours":
          " From 6:00 AM to 4:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/tut.jpg",
      "name": "Tomb of Tutankhamun\n(KV 62)",
      "descrip": "Luxor, Egypt.",
      "url": "https://www.youtube.com/watch?v=IGJAF9VzPDQ",
      "description":
          """The Tomb of Tutankhamun, designated as KV62 (King's Valley 62), is an ancient Egyptian burial chamber located in the Valley of the Kings on the west bank of the Nile near Luxor. The tomb gained worldwide fame for its discovery by Howard Carter in 1922, revealing an extraordinary collection of treasures belonging to the young pharaoh Tutankhamun. Tutankhamun, also known as the "Boy King," ruled during the 18th Dynasty (c. 1332–1323 BCE).
\nKey features of the Tomb of Tutankhamun (KV62) include:
\nBurial Chamber: The central focus of the tomb is the burial chamber, where Tutankhamun's sarcophagus rested. The walls are decorated with scenes from the Amduat, the Book of the Day, and the Book of the Night, depicting the pharaoh's journey through the afterlife.
\nTreasury and Antechamber: The tomb contains a series of rooms, including the Antechamber and the Treasury, which were filled with various artifacts, furniture, and personal belongings of Tutankhamun. The iconic golden mask of Tutankhamun was found in the Treasury.
\nAnnex: The Annex is another section of the tomb containing additional items, including chariots, pottery, and statuettes.
""",
      "location":
          "The Tomb of Tutankhamun (KV62) is situated in the Valley of the Kings, an ancient royal necropolis on the west bank of the Nile River near Luxor, Egypt. The Valley of the Kings is home to numerous tombs of pharaohs and high-ranking officials from the New Kingdom period.",
      "latitude": 25.7404,
      "longitude": 32.6014,
      "tips":
          """Photography may be restricted inside the tomb to preserve the artifacts. Check local regulations and guidelines.
\nDue to the popularity of Tutankhamun's tomb, there may be additional fees or restrictions on the number of visitors.
\nGuided tours are available and recommended for a deeper understanding of the tomb's historical and archaeological significance.
""",
      "openingHours":
          "From 6:00 AM to 4:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/Tombs of Sennoferjpg.jpg",
      "name": "Tombs of Sennofer\n& Rekhmire",
      "descrip": "Luxor, Egypt.",
      "url": "https://www.youtube.com/watch?v=q6B11bcuXDk",
      "description": """1. Sennofer's Tomb (TT96):
\nSennofer, also known as Sennefer, was an 18th Dynasty noble during the reign of Amenhotep II.
\nThe tomb of Sennofer is known for its well-preserved and vividly colored wall paintings, showcasing scenes of daily life, banquets, and agricultural activities.
\nSennofer's tomb is also called the "Tomb of the Vineyards" due to the emphasis on viticulture scenes.
\nThe tomb has a T-shaped design with a pillared hall leading to an inner chamber.
\n2. Rekhmire's Tomb (TT100):
\nRekhmire served as a vizier during the reigns of Thutmose III and Amenhotep II.
\nThe tomb of Rekhmire is particularly famous for its scenes depicting foreign delegations bringing tribute to the pharaoh. It provides valuable insights into Egypt's diplomatic and trade relations during the New Kingdom.
\nThe tomb also features scenes of workshops, indicating Rekhmire's involvement in administration and oversight of various industries.
\nRekhmire's tomb has a central hall with pillars and side chambers adorned with detailed reliefs.
""",
      "location":
          "Both tombs, Sennofer (TT96) and Rekhmire (TT100), are located in the Sheikh Abd el-Qurna area of the Theban Necropolis on the west bank of the Nile near Luxor, Egypt. The area is known for its concentration of tombs belonging to nobles and officials.",
      "latitude": 25.7257720969,
      "longitude": 32.6059709094,
      "tips":
          """Guided tours are recommended for a deeper understanding of the historical and artistic significance of the tombs.
\nPhotography policies may vary, so check with the site authorities regarding camera usage inside the tombs.
\nWear comfortable clothing and suitable footwear for exploring the tombs, and be mindful of preservation efforts to protect the ancient artwork.
""",
      "openingHours":
          "From 6:00 AM to 4:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/tombs-of-the-nobels.jpg",
      "name": "Tombs of the Nobles",
      "descrip": "Luxor, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=uufvZO2dClg&ab_channel=BrienFoerster",
      "description":
          """The Tombs of the Nobles, also known as the Valley of the Nobles, is an archaeological site on the west bank of the Nile River near Luxor, Egypt. This area is home to a collection of tombs belonging to high-ranking officials, nobles, and other individuals from various periods of ancient Egyptian history. The tombs feature well-preserved wall paintings and reliefs depicting scenes from daily life, religious rituals, and the journey to the afterlife.
\nKey features of the Tombs of the Nobles include:
\nRichly Decorated Tombs: The tombs in this area are known for their elaborate decorations, showcasing the wealth and status of the individuals buried within. Scenes often include depictions of the deceased, family members, and various aspects of daily life.
\nVariety of Themes: The wall paintings cover a range of themes, including agricultural activities, banquets, religious ceremonies, and the preparation for the afterlife. The diverse subjects provide valuable insights into the culture and beliefs of ancient Egyptian society.
\nDifferent Dynasties: Tombs in the Valley of the Nobles span various dynasties, including the New Kingdom (18th, 19th, and 20th Dynasties) and later periods. Each tomb reflects the artistic styles and religious beliefs of its respective time.
""",
      "location":
          "The Tombs of the Nobles are located on the west bank of the Nile River, near Luxor, Egypt. The area is situated on the slopes of the Theban Hills and includes several valleys, such as Sheikh Abd el-Qurna and Dra' Abu el-Naga.",
      "latitude": 24.101769,
      "longitude": 32.889158,
      "tips":
          """Guided tours are recommended for a more in-depth understanding of the historical and artistic significance of the tombs.
          \nPhotography policies may vary by tomb, so check with site authorities regarding camera usage.
          \nWear comfortable clothing and suitable footwear for exploring the tombs, and be respectful of preservation efforts to protect the ancient artwork.""",
      "openingHours":
          "From 6:00 AM to 4:00 PM. \nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/philae.webp",
      "name": "Philae Temple",
      "descrip": "Aswan, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=pemoNsAYWhc&ab_channel=ODYSSEYVISUALMEDIA",
      "description":
          """Philae Temple, also known as the Temple of Isis, is an ancient Egyptian temple complex located on Philae Island in the reservoir of the Aswan Low Dam, Egypt. Dedicated to the goddess Isis, the temple was originally situated on Philae Island but was later relocated to Agilkia Island due to the construction of the Aswan High Dam. The temple is renowned for its well-preserved architecture, reliefs, and its significance in the worship of the goddess Isis.
\nKey features of Philae Temple include:
\nMain Temple: The main temple is dedicated to the goddess Isis and features a classic Egyptian architectural style. It consists of a series of pylons, colonnades, hypostyle halls, and sanctuaries.
\nKiosk of Trajan: This elegant structure, also known as the Pharaoh's Bed, is an open pavilion with fourteen columns and a roof supported by colossal Hathor-headed columns. It is located at the entrance to the temple.
\nTemple of Hathor: Adjacent to the main temple is a smaller temple dedicated to Hathor, the goddess of love and motherhood. It features depictions of Hathor as a cow suckling the infant Horus.
\nSacred Lake: The temple complex includes a sacred lake, symbolizing the primordial waters of creation. Pilgrims would perform ritual purification in the lake before entering the temple.
""",
      "location":
          "Philae Temple is located on Agilkia Island in Lake Nasser, near Aswan, Egypt. The relocation of the temple to Agilkia Island was part of an international effort to save the ancient monuments threatened by the rising waters from the Aswan High Dam.",
      "latitude": 24.0127,
      "longitude": 32.8775,
      "tips":
          """Philae Temple is often illuminated at night, offering a magical and serene atmosphere. Check for any special evening events or light shows.
\nGuided tours are available and recommended for a deeper understanding of the history and significance of the temple.
\nAs Philae Temple is located on an island, boat transportation is typically required to reach the site.
""",
      "openingHours":
          "From 7:00 AM to 4:00 PM. However, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or the local tourist authorities, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/Qubbet-El-Hawa.jpg",
      "name": "Qubbet El-Hawa",
      "descrip": "Aswan, Egypt.",
      "url": "https://www.youtube.com/watch?v=dMPtc1J94rY&ab_channel=ahmedawad",
      "description":
          """Qubbet el-Hawa is an archaeological site and a group of rock-cut tombs located on the western bank of the Nile River in Aswan, Egypt. The site is known for its tombs that belong to high-ranking officials and nobles, dating primarily to the Old Kingdom and Middle Kingdom periods. The tombs offer insight into the lives, titles, and roles of these individuals in ancient Egyptian society.
\nKey features of Qubbet el-Hawa include:
\nTombs of Officials: The tombs at Qubbet el-Hawa belong to officials and administrators, including governors and nomarchs, who served during the Old Kingdom and Middle Kingdom.
\nInscriptions and Reliefs: The tombs are adorned with inscriptions and reliefs depicting scenes from daily life, religious rituals, and the deceased's journey to the afterlife. The inscriptions provide valuable historical and cultural information.
\nTomb of Harkhuf: One of the prominent tombs at Qubbet el-Hawa is attributed to Harkhuf, a governor during the 6th Dynasty. Harkhuf is known for his expeditions to Nubia and interactions with the king.
""",
      "location":
          " Qubbet el-Hawa is situated on the western bank of the Nile River, across from the city of Aswan in southern Egypt. It is accessible by boat from Aswan, and the site offers picturesque views of the Nile and the surrounding landscape.",
      "latitude": 24.1019,
      "longitude": 32.8891,
      "tips":
          """Guided tours may be available and can enhance your understanding of the historical significance of the tombs.
\nWear comfortable clothing and sturdy shoes, as the terrain around the tombs may be uneven.
\nCheck with local authorities regarding access and transportation to the site, especially if boat transportation is required.
""",
      "openingHours":
          "Specific opening hours for Qubbet el-Hawa may not have been widely available. The site is part of the general archaeological area, and access may be subject to arrangements with local authorities or guided tours. It's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or local tourism offices, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/abu_simbel.jpeg",
      "name": "Abu Simbel Temples",
      "descrip": "Aswan, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=pXykSd4gre0&ab_channel=TravelPenguin",
      "description":
          """The Abu Simbel Temples are two massive rock temples located in southern Egypt, near the border with Sudan. Built during the reign of Pharaoh Ramesses II in the 13th century BCE, the temples are renowned for their impressive scale, architectural grandeur, and historical significance. The temples were carved into the rock face of the mountainside, overlooking Lake Nasser.
\nKey features of the Abu Simbel Temples include:
\n1. Great Temple of Ramesses II:
\nThe Great Temple is the larger of the two and is dedicated to the deified Pharaoh Ramesses II. The facade features four colossal seated statues of Ramesses II, each about 20 meters in height, representing the pharaoh in a seated position.
\nThe interior of the Great Temple consists of a series of halls and chambers adorned with intricate reliefs depicting scenes from Ramesses II's military victories, religious rituals, and offerings to the gods.
\n2. Temple of Hathor and Nefertari:
\nThe smaller temple is dedicated to the goddess Hathor and Queen Nefertari, the beloved wife of Ramesses II. It features statues of the king and queen at the entrance.
\nThe interior of the Temple of Hathor and Nefertari contains a hypostyle hall and sanctuaries with depictions of the royal couple making offerings to the gods.
""",
      "location":
          "The Abu Simbel Temples are located in the region of Nubia, approximately 230 kilometers southwest of Aswan. The temples were originally situated near the banks of the Nile but were relocated to a higher location to avoid submersion by the waters of Lake Nasser following the construction of the Aswan High Dam.",
      "latitude": 22.3372,
      "longitude": 31.6258,
      "tips":
          """The Abu Simbel Temples are a UNESCO World Heritage Site and a popular tourist destination, so consider arriving early to avoid crowds.
\nThe temples are illuminated at night during sound and light shows, providing a unique and enchanting experience.
\nGuided tours are available, providing insights into the history and significance of the temples.
""",
      "openingHours":
          "From 5:00 AM to 6:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or local tourism offices, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/Kom-Ombo.png",
      "name": "Kom Ombo Temple",
      "descrip": "Aswan, Egypt.",
      "url":
          "https://www.youtube.com/watch?v=NQfmWCb1vNU&ab_channel=OurEndlessWorld",
      "description":
          """Kom Ombo Temple is an ancient Egyptian temple dedicated to two deities: Sobek, the crocodile-headed god, and Horus the Elder, a falcon-headed god. This unique temple is known for its double design, with symmetrical halls and sanctuaries dedicated to each god. It is located in the town of Kom Ombo, near the Nile River in Upper Egypt.
\nKey features of Kom Ombo Temple include:
\n1. Double Design:
\nThe temple has a double design, with each side dedicated to a different deity. The left side is dedicated to Sobek, associated with fertility and protection, while the right side is dedicated to Horus the Elder, associated with healing.
\n2. Crocodile Museum:
\nThe temple houses a small museum showcasing mummified crocodiles. Crocodiles were sacred to Sobek, and many were mummified as offerings.
\n3. Courtyards and Halls:
\nThe temple features open courtyards, hypostyle halls with columns, and sanctuaries. The walls are adorned with reliefs depicting various religious and mythological scenes.
\n4. Nilometer:
\nThe temple complex includes a Nilometer, an ancient device used to measure the water level of the Nile River. This information was crucial for predicting the success of the harvest.
""",
      "location":
          "Kom Ombo Temple is located in the town of Kom Ombo, approximately 45 kilometers north of Aswan, along the Nile River. It is situated on a promontory overlooking the river, offering scenic views.",
      "latitude": 24.4521,
      "longitude": 32.9284,
      "tips":
          """Consider visiting during the early morning or late afternoon to avoid the heat, especially if exploring the temple during the warmer months.
\nGuided tours are available and can provide valuable insights into the history and significance of the temple.
\nWear comfortable clothing and sturdy shoes, as you may be exploring uneven surfaces within the temple complex.
""",
      "openingHours":
          "From 6:00 AM to 5:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or local tourism offices, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/Temple-of-edfu.jpg",
      "name": "Edfu Temple",
      "descrip": "West bank of the Nile in Edfu",
      "url":
          "https://www.youtube.com/watch?v=t8iwr5B9C2E&ab_channel=SlideshowAlchemist",
      "description":
          """The Edfu Temple, also known as the Temple of Horus, is one of the most well-preserved ancient Egyptian temples dedicated to the falcon-headed god Horus. Located in the town of Edfu, on the west bank of the Nile River in Upper Egypt, this temple is an excellent example of Ptolemaic architecture and is known for its grand scale and intricate reliefs.
\nKey features of Edfu Temple include:
\n1. Hypostyle Halls:
\nThe temple has impressive hypostyle halls with towering columns adorned with intricate hieroglyphs and carvings. The columns are decorated with images of the god Horus and scenes from ancient Egyptian mythology.
\n2. Pylon and Courtyard:
\nThe entrance to the temple is marked by a massive pylon, or gateway, leading to a large courtyard. The courtyard is surrounded by a colonnade with statues of Horus and various ritual scenes.
\n3. Sanctuaries:
\nThe main sanctuaries of the temple contain statues and shrines dedicated to Horus. The innermost sanctuary houses a granite statue of the god.
\n4. Reliefs and Inscriptions:
\nThe walls of Edfu Temple are covered with detailed reliefs and inscriptions depicting the "Horus Myth" and other religious ceremonies. These carvings provide valuable insights into ancient Egyptian beliefs and rituals.
""",
      "location":
          "Edfu Temple is located in the town of Edfu, along the west bank of the Nile River, approximately midway between Luxor and Aswan. The temple is easily accessible by road or Nile cruise.",
      "latitude": 24.9779,
      "longitude": 32.8734,
      "tips":
          """Guided tours are available and recommended for a more in-depth understanding of the temple's history and significance.
\nEdfu Temple is a popular tourist destination, so consider visiting during non-peak hours to avoid crowds.
\nWear comfortable clothing and sturdy shoes, as you'll be exploring the temple complex, which may include uneven surfaces.
""",
      "openingHours":
          "From 6:00 AM to 5:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or local tourism offices, for the most up-to-date information before planning your visit."
    },
    {
      "img": "img/ancientegypt/Temple of Hatshepsut.jpg",
      "name": "Hatshepsut Temple",
      "descrip": "West bank of the Nile",
      "url":
          "https://www.youtube.com/watch?v=xWCcNK-a8bQ&ab_channel=ODYSSEYVISUALMEDIA",
      "description":
          """The Mortuary Temple of Hatshepsut, commonly known as Hatshepsut Temple, is an ancient Egyptian temple located on the west bank of the Nile River near Luxor. Dedicated to the female pharaoh Hatshepsut, this monumental structure is one of the most significant and well-preserved temples in Egypt. The temple complex is situated in the Valley of the Kings and is renowned for its unique architecture and dramatic setting against the cliffs of Deir el-Bahari.
\nKey features of Hatshepsut Temple include:
\n1. Three Terraced Levels:
\nThe temple is built in a series of three terraced levels connected by ramps and colonnades. The terraces are supported by colonnades with rows of large, square pillars.
\n2. Central Sanctuary:
\nThe central sanctuary houses statues and reliefs depicting Hatshepsut as a male pharaoh, emphasizing her royal authority. The temple was dedicated to the god Amun, and the reliefs tell the story of the divine birth and coronation of Hatshepsut.
\n3. Chapels and Statues:
\nThe temple complex contains various chapels and shrines dedicated to different gods and pharaohs. The courtyard features statues of Hatshepsut in the form of the god Osiris.
\n4. Colonnaded Hall:
\nThe upper terrace includes a large colonnaded hall with pillars and reliefs depicting the expedition to Punt, an ancient trading partner of Egypt.
""",
      "location":
          "Hatshepsut Temple is located in the Valley of the Kings on the west bank of the Nile River, near the modern town of Luxor, Egypt. It is part of the larger archaeological complex of Deir el-Bahari, which includes other mortuary temples and tombs.",
      "latitude": 25.7383,
      "longitude": 32.6065,
      "tips":
          """Guided tours are available and recommended for a deeper understanding of the temple's history and architecture.
\nWear comfortable clothing and sunscreen, as the site can be exposed to the sun.
\nBe aware of any photography restrictions and respect the preservation efforts at the site.
""",
      "openingHours":
          "From 6:00 AM to 5:00 PM.\nHowever, these hours may vary, and it's advisable to check with official sources, such as the Ministry of Antiquities in Egypt or local tourism offices, for the most up-to-date information before planning your visit."
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomCategory(items: ancientEgypt),
    );
  }
}
