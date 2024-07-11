import 'package:ETG/streets/street_template.dart';
import 'package:flutter/material.dart';

class SaadZaghalolPage extends StatelessWidget {
  const SaadZaghalolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStreets(
      streetName: "Saad Zaghloul",
      img: "img/streets/شارع سعد زغلول.jpg",
      url: "https://youtu.be/mgp7WXJkWpw?si=eaGtLGakvbYGHj6f",
      maintext:
          """Saad Zaghloul Street, also known as El-Talateny Street, is an important thoroughfare in Port Said, Egypt. The street is named after Saad Zaghloul, a significant figure in Egyptian history. 
\nSome key facts about Saad Zaghloul:
\nPolitical Leader: Saad Zaghloul (1859–1927) was a prominent Egyptian nationalist leader and the founder of the Wafd Party. He played a crucial role in Egypt’s struggle for independence from British rule.
\nWafd Party: Under Zaghloul’s leadership, the Wafd Party became a major political force advocating for Egyptian self-determination and constitutional reforms. Saad Zaghloul's efforts and leadership were instrumental in the eventual granting of limited independence to Egypt in 1922, which marked the beginning of a new era in Egyptian politics.
""",
    );
  }
}
