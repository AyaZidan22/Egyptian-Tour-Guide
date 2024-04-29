import 'package:flutter/material.dart';
import 'package:travelapp/detail_pages.dart/detail_template.dart';

class HotBallon extends StatelessWidget {
  const HotBallon({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDetailPage(
      img: 'img/ballon.jpg',
      itemName: 'Hot Air Balloons Ride',
      description:
          """Hot air ballooning in Luxor is an incredible experience that you'll never forget. The views are breathtaking, the experience is unique, and it's something you can't do anywhere else.
\n\nHot air balloon flights in Luxor take place early in the morning, when the winds are calm and the sky is clear. You'll be able to take in the stunning views of Luxor's ancient monuments and temples from up high. It's a great way to start your day! Plus, you'll get to see some of Egypt's most famous landmarks from a totally different perspective.
\n\nThe hot air balloon rides themselves are quite peaceful and tranquil. You'll be able to take your time and enjoy the scenery as you drift along with the wind. The pilot will take you up to heights of around 1,000 feet so that you can get a bird's eye view of everything below. The balloons themselves are quite large and spacious, so there's plenty of room for everyone on board.
\n\nHot air balloon rides in Luxor typically last around 45 minutes to 1 hour, depending on weather conditions and the specific flight package offered by the operator. This duration provides ample time to enjoy the breathtaking views of Luxor's iconic landmarks, such as the Valley of the Kings, the Temple of Hatshepsut, and the Nile River, among others.""",
      prices:
          """The cost of a hot air balloon ride in Luxor, Egypt can vary depending on several factors such as the operator, the duration of the flight, and any additional services included. On average, prices for a hot air balloon ride in Luxor range from approximately \$80 to \$150 per person.
\n\nIt's important to note that these prices are subject to change and may vary based on the season, availability, and specific offerings of different operators. Additionally, some operators may offer packages that include extras like hotel transfers, breakfast, or guided tours, which can affect the overall cost.""",
    );
  }
}
