import 'package:ETG/streets/street_template.dart';
import 'package:flutter/material.dart';

class MohamedAliPage extends StatelessWidget {
  const MohamedAliPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStreets(
      streetName: "Mohamed Ali",
      url: "https://youtu.be/r374WBfaaPg?si=Det3zur5zB6ZLLZL",
      img: "img/streets/محمد علي1.jpg",
      maintext:
          """Mohamed Ali Street was originally called Sharia al-Qasaba, referring to the nearby Citadel of Cairo. Over time, it became known as Muhammad Ali in honor of the powerful ruler who commissioned its development. Today, Mohamed Ali Street remains a major landmark and tourist attraction in Cairo. It is known for its impressive Neoclassical and Italianate architecture, reflecting the influence of European styles that were introduced during the 19th century modernization efforts.
\nSome key facts about Muhammad Ali:
\nMuhammad Ali Pasha (1769-1849) was an Albanian military commander who became the de facto ruler of Egypt from 1805 until his death in 1849. He is considered the founder of modern Egypt and played a pivotal role in shaping the country's trajectory.
\nEarly Life: Muhammad Ali was born in 1769 in the town of Kavala in what is now northeastern Greece. He came from an Albanian family and entered the Ottoman army as a young man.
\nRise to Power: In 1805, Muhammad Ali was sent by the Ottoman Sultan to help suppress a rebellion in Egypt. He used this opportunity to consolidate his own power and eventually became the ruler of Egypt, establishing a dynasty that would last until the early 20th century.
\nModernization Efforts: As ruler of Egypt, Muhammad Ali embarked on an ambitious program to modernize the country. He reformed the military, agriculture, and infrastructure, and promoted European-style education and industrialization.
\nMilitary Expansion: Muhammad Ali expanded Egypt's territories, conquering parts of Syria, Sudan, and the Hijaz region of Arabia. This helped cement Egypt's status as a major regional power during his reign.""",
    );
  }
}
