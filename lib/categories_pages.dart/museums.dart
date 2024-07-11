import 'package:flutter/material.dart';
import 'package:ETG/categories_pages.dart/category.dart';

class Museums extends StatefulWidget {
  const Museums({super.key});

  @override
  State<Museums> createState() => _MuseumsState();
}

class _MuseumsState extends State<Museums> {
  List<Map<String, dynamic>> museums = [
    {
      "img": "img/Museums/PortSaid.jpg",
      "name": "Port Said Military Museum",
      "descrip": "Port Said, Egypt",
      "url": "https://www.youtube.com/watch?v=zqNYct_oGw8",
      "description":
          """The foundation of Port-Said Military Museum dates back to 1964, and commemorates the tripartite aggression on Port-Said city in 1956. The museum was inaugurated on the national day of Port-Said governorate on the 23rd of December, 1964. The museum went through renovations, maintenance and development and was reopened in 1978, after attaching an additional hall for displaying the collections of October War, then was reopened a second time on the 23rd of December, 2009. The museum targets documenting the acts of the tripartite aggression on Port-Said city, and witnessing the greatness and heroism of the people of Port-Said while defending their land. The museum was established on a space of 7000 square meters. The museum includes a garden for open-air museum displays, across from which lies the main construction which includes the display halls, the facilities, and the museum services.""",
      "openingHours": """9 AM - 7 PM""",
      // "prices":
      //     "Egyptian student: 40 EGP\nEgyptian:80 EGP\nForeigner: 500 EGP\nForeigner student: 250 EGP",
      "location": "23rd July Street, Al Arab, Port Said Governorate",
      "latitude": 31.2701,
      "longitude": 32.3000
    },
    {
      "img": "img/Museums/The-National-Museum-of-Egyptian-Civilization.jpg",
      "name": "National Museum of Egyptian\nCivilization",
      "descrip": "Cairo, Egypt",
      "url": "https://www.youtube.com/watch?v=5xT-pJZz6tQ",
      "description":
          """National museum of egyptian civilization is considered the first museum of its kind in Egypt and the Arab world. It is a comprehensive global cultural complex that allows its visitors to embark on a journey through history to learn about the successive Egyptian civilizations. The idea of establishing the museum began when UNESCO, at the request of the Egyptian government, announced an international campaign to establish the Nubia Museum in Aswan and the National Museum of Egyptian Civilization in Cairo in 1982. The cornerstone was laid in 2002 in the heart of the Fustat city, the first and oldest Islamic capital in Africa, after an Egyptian architect won an international architectural competition to design the museum.""",
      "openingHours":
          "Saturday to Thursday: 9:00 AM to 5:00 PM\nFriday: 9:00 AM to 5:00 PM,and from 6:00 PM to 9:00 PM",
      "prices":
          "Egyptian student: 40 EGP\nEgyptian:80 EGP\nForeigner: 500 EGP\nForeigner student: 250 EGP",
      "location": "Cairo\nAddress: Fustat, Ain El Sira",
      "latitude": 30.0084,
      "longitude": 31.2482
    },
    {
      "img": "img/Museums/IslamicArt.png",
      "name": "Museum of Islamic Art",
      "descrip": "Cairo, Egypt",
      "url": "https://www.youtube.com/watch?v=vzH8HIUqKu0",
      "description":
          """Museum of islamic art is considered the largest museum of Islamic artifacts in the world, exhibiting diverse collections of Islamic arts from Egypt, India, China, Andalusia, the Levant, the Arabian Peninsula, North Africa, and other lands of the Islamic world. The idea of its establishment began during the reign of Khedive Ismail in 1869, and it was inaugurated by Khedive Abbas Helmi II in 1903. The museum was closed for renovation in 2003 and reopened in 2010. The museum building and approximately 179 pieces of its collection were damaged in 2014 following an explosion near the Cairo Security Directorate building facing it. The museum was closed, and restoration and development projects were completed, with the President of the Republic presiding over its reopening in 2017.The museum houses the largest collection of Islamic art artifacts from various parts of the Islamic world, with subjects ranging from astronomy, medicine, architecture, and more. The materials vary from wooden works to decorated ceramic pieces and manuscripts, with the key to the Kaaba dating back to the Mamluk era being one of the museum's most important treasures.""",
      "location": "Cairo\nAddress: Port Said Street, Bab al-Khalq Square",
      "openingHours": """From 9:00 AM to 5:00 PM""",
      "prices":
          "Egyptian student: 10 EGP\nEgyptian: 20 EGP\nForeigner: 270 EGP\nForeigner student: 140 EGP",
      "latitude": 30.0447,
      "longitude": 31.2527
    },
    {
      "img": "img/Museums/The copic.png",
      "name": "Coptic Museum",
      "descrip": "Cairo, Egypt",
      "url": "https://www.youtube.com/watch?v=cd2WmTqIprc",
      "description":
          """Coptic museum is the largest museum of Coptic artifacts in the world, exhibiting diverse and rare collections of Coptic art and its influence on other cultures' arts. The idea of establishing it began in 1898, when the Committee for the Preservation of Arab Antiquities recommended its establishment after the efforts made by Marcus Pasha Simaika, a prominent Christian figure who was interested in preserving Coptic heritage. It was opened in 1910 to serve as a complex for artifacts and documents contributing to enriching the study of Coptic art in Egypt. The new wing of the museum was opened in 1947 and has been developed several times, with the latest in 2006, when the old and new wings of the museum were connected by a corridor The museum consists of two wings housing the world's largest collection of archaeological treasures reflecting the history of Christianity in Egypt since its early days. Among its highlights are collections of illuminated manuscripts, icons, wooden sculptures, and decorated murals depicting religious scenes taken from ancient monasteries and churches. The museum also includes collections of pieces illustrating the influence of Coptic art on all prevailing cultures, including ancient Egyptian, Greek, Roman, and Islamic.""",
      "location": "Mar Girgis Street, Old Cairo, Egypt.",
      "prices":
          "Egyptian student: 10 EGP\nEgyptian: 20 EGP\nForeigner: 320 EGP\nForeigner student: 120 EGP",
      "openingHours": "from 9 am to 5 pm.",
      "latitude": 30.0058,
      "longitude": 31.2304
    },
    {
      "img": "img/Museums/Manial Palace Museum.png",
      "name": "Manial Palace Museum",
      "descrip": "Cairo, Egypt",
      "url":
          "https://www.youtube.com/watch?v=1RnWAmUdQoU&ab_channel=ConnollyCove",
      "description":
          """Prince Mohamed Ali Palace is considered one of the most beautiful and important historical palaces in Egypt. It serves as an artistic university, encompassing various elements of Islamic arts, representing an important period in modern Egyptian history. The idea of transforming the palace into a museum arose after the prince's death to fulfill his wishes. The palace was closed in 2005 and reopened after the completion of its restoration project in 2015, with the Hunting Museum within the palace also reopening in 2017. The construction of Prince Mohamed Ali Palace, the son of Khedive Mohamed Tawfik, took place between 1900 and 1929. It began with the construction of the residential palace, followed by the reception palace, the throne palace, the mosque, the private museum, the Hunting Museum, the clock tower, and the Golden Hall, all enclosed within a massive wall built in the style of medieval fortresses. The remaining space of the palace was designated to become a garden containing a number of rare trees and plants collected by the prince from various countries around the world, including cacti, Indian figs, royal palm trees with white trunks, bamboo, and ficus.""",
      "openingHours": "From 9:00 AM to 5:00 PM",
      "location": "Cairo\nAddress: Saray Street, Manial El Roda",
      "prices":
          "Egyptian student: 5 EGP\nEgyptian: 20 EGP\nForeigner: 180 EGP\nForeigner student: 90 EGP",
      "latitude": 30.0274,
      "longitude": 31.2298
    },
    {
      "img": "img/Museums/nubian.jpg",
      "name": "Nubian Museum",
      "descrip": "Aswan, Egypt",
      "url":
          "https://www.youtube.com/watch?v=BW0UMB0O5SU&ab_channel=Architect%27sVision",
      "description":
          """Nubian museum is one of the most important regional historical museums in Egypt and a prominent tourist attraction in Aswan. The idea of establishing and opening the museum in 1997 was initiated by UNESCO, aiming to showcase the results of excavations in the Nubian temple areas, presenting Nubian customs, traditions, and language from prehistoric times to modern times.
The museum building was designed resembling traditional Nubian architecture, finished with sandstone and pink granite. In 2001, the building won the Aga Khan Award for Architecture. The museum consists of three floors containing a number of archaeological pieces, including a statue of King Ramses II from the 19th Dynasty, a prehistoric skeletal structure, various iron weapons, silver tiaras adorned with carnelians, horse saddles, silver jewelry, and pottery.""",
      "openingHours":
          "From 9:00 AM to 5:00 PM\nAdditional hours on Thursdays and Fridays from 6:00 PM to 9:00 PM",
      "prices":
          "Egyptian student: 10 EGP\nEgyptian: 30 EGP\nForeigner: 300 EGP\nForeigner student: 150 EGP",
      "location": "Aswan\nAddress: Hotels Street, Aswan.",
      "latitude": 24.0794,
      "longitude": 32.8892
    },
    {
      "img": "img/Museums/Luxor.jpg",
      "name": "Luxor Museum",
      "descrip": "Luxor, Egypt",
      "url":
          "https://www.youtube.com/watch?v=2jMYcrHGRR8&ab_channel=ExploreLuxor",
      "description":
          """Luxor museum is considered one of the most beautiful regional museums in Egypt and a popular tourist destination for both tourists and Egyptians alike. The idea of establishing and opening the museum began in 1975 to revive art in the ancient city of Thebes. A new hall was added in 1984, followed by the opening of the Amarna Hall in 1989 and the Tutankhamun Hall in 2004.
The museum building consists of two floors designed to take visitors on a tour inside, starting with an ascending corridor on the right side, leading to an upper hall connected to a descending corridor on the other side of the museum, bringing visitors back to the starting point. The museum houses a unique collection of artifacts from prehistoric eras, ancient Egyptian periods, with a focus on the New Kingdom period, as well as the Greek and Roman eras, in addition to artifacts representing Coptic and Islamic art.""",
      "openingHours": "From 9:00 AM to 2:00 PM\nFrom 5:00 PM to 9:00 PM",
      "location": "Luxor\nAddress: Nile Corniche, Luxor.",
      "prices":
          "Egyptian student: 10 EGP\nEgyptian: 30 EGP\nForeigner: 300 EGP\nForeigner student: 150 EGP",
      "latitude": 25.7076,
      "longitude": 32.6445
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomCategory(items: museums),
    );
  }
}
