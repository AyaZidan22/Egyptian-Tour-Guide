import 'package:flutter/material.dart';
import 'package:ETG/detail_pages.dart/detail_template.dart';

class NileCruises extends StatelessWidget {
  const NileCruises({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDetailPage(
      img: "img/TopActivities/nile.jpg",
      itemName: 'Nile Cruises',
      description:
          """Nile cruises from Aswan to Luxor and vice versa, are a type of tourism on which the cities of southern Upper Egypt depend, attracting millions of tourists annually from different countries of the world.
\n\nThis type of trip is favored by some tourists who come specially from foreign countries, especially "Germany, Japan, the USA, England, Belgium, and others" to enjoy the magic of nature on the banks of the Nile and visit tourist and archaeological sites while enjoying a purely natural atmosphere surrounded by picturesque landscapes, greenery, and fresh air, the charm of the mountains in its beauty.
\n\nAbout the types of these Nile cruise tours, there is a Nile cruise that takes 7 nights from Luxor to Aswan and then Luxor again back and forth or vice versa, and there is a Nile cruise that takes 3 nights and is the starting point of Aswan to Luxor or vice versa and includes visiting the most popular sightseeing located on the banks of the Nile River, for example in Aswan you will visit temples: "Edfu, Kom Ambo and Philae" next to the high dam and much more, and in Luxor includes a visit to Luxor top attractions such as Hatshepsut temple, Valley of the Kings, Karnak Temple, Luxor temple and much more. Also, you can enjoy optional Egypt tours and sightseeing such as sound and light, a visit to the Temple of Abu Simbel, Nubian villages, etc.""",
      prices:
          """The price of these Nile cruise trips varies depending on the timing of the trip, whether in summer or winter and also varies according to the class of the Nile cruise 4 or 5 stars.
It is also possible to enjoy your Nile cruise tour and book Luxor and Aswan tours within Egypt travel packages, where you can visit famous Cairo attractions such as the Pyramids of Giza, the Egyptian Museum, and others, or enjoy the Red Sea tour packages included Luxor Aswan Nile cruise.""",
    );
  }
}
