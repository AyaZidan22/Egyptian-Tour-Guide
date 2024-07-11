import 'package:flutter/material.dart';
import 'package:ETG/detail_pages.dart/detail_template.dart';

class ClimbingMountain extends StatelessWidget {
  const ClimbingMountain({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomDetailPage(
      img: 'img/TopActivities/Hiking1.jpg',
      itemName: 'Climbing Mount Sinai Peak',
      description:
          """Egypt, renowned for its ancient pyramids and vast deserts, offers a surprising array of opportunities for hiking and climbing enthusiasts. Beyond its historical treasures, Egypt's diverse landscapes provide unique and exhilarating experiences for adventurers seeking to explore its natural wonders on foot or by scaling its peaks.

Top Hiking and Climbing Destinations:

1. Mount Sinai

Location: Sinai Peninsula
Highlights: Mount Sinai is perhaps Egypt's most famous hiking destination. Known for its religious significance, it's believed to be the site where Moses received the Ten Commandments. The hike to the summit is a popular pilgrimage, offering breathtaking sunrise views over the surrounding desert landscape.
Trail: The Camel Path (Siket Sayidna Musa) is a longer but less steep trail, while the Steps of Repentance (Siket Sayidna Musa) is a shorter but steeper climb.

2. Saint Catherine's Monastery

Location: At the base of Mount Sinai
Highlights: The monastery is one of the oldest working Christian monasteries in the world and a UNESCO World Heritage site. It's a starting point for many hikes in the region.
Trails: Several trails start from the monastery, including routes to nearby peaks like Mount Catherine, Egypt's highest peak.

3. The White Desert (Sahara el Beyda)

Location: Farafra Oasis, Western Desert
Highlights: Known for its surreal landscapes of chalk rock formations that resemble giant mushrooms and otherworldly shapes. The White Desert offers a unique hiking experience with its dramatic and ever-changing scenery.
Activities: Besides hiking, you can enjoy camping under the stars in this ethereal setting.

4. The Red Sea Mountains

Location: Eastern Desert, near the Red Sea coast
Highlights: The Red Sea Mountains provide a rugged terrain for climbing and trekking. The Gebel Elba region, in particular, is known for its biodiversity and unique flora and fauna.
Activities: Combine hiking with snorkeling or diving in the nearby Red Sea for a diverse adventure.

5. The Black Desert

Location: Western Desert, near Bahariya Oasis
Highlights: Characterized by volcanic hills and black basalt rock formations, the Black Desert offers a stark contrast to the White Desert. It's a great place for hiking and exploring unique geological formations.
Activities: Hiking and off-road adventures are popular here, with opportunities to visit nearby hot springs.""",
      tips: """
Best Time to Visit: The ideal time for hiking and climbing in Egypt is during the cooler months, from October to April. Summers can be extremely hot, especially in desert regions.

Guided Tours: Consider hiring a local guide, especially for more remote areas like the Sinai Peninsula and Western Desert. Guides can provide valuable insights and ensure safety.

Preparation: Carry plenty of water, sun protection (hat, sunscreen, sunglasses), and wear appropriate footwear. Be prepared for temperature fluctuations, especially in desert regions where it can get cold at night.

Respect Nature and Culture: Egypt's natural and historical sites are precious. Respect local customs, wildlife, and the environment. Take only photographs and leave no trace.""",
      prices: """Day Tours: \$30 to \$150 per person.
Overnight and Multi-Day Tours: \$100 to \$700 per person.
Independent Travel: \$10 to \$50 per day for accommodation, \$5 to \$200 for transportation, and additional costs for gear and permits.""",
    );
  }
}
