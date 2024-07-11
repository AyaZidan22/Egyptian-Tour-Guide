import 'package:ETG/streets/street_template.dart';
import 'package:flutter/material.dart';

class SafiaZaghlolPage extends StatelessWidget {
  const SafiaZaghlolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStreets(
      streetName: "Safia Zaghloul",
      img: "img/streets/2018-636662493441700787-170.jpg",
      maintext:
          """Saad Zaghloul Street, also known as El-Talateny Street, is an important thoroughfare in Port Said, Egypt. The street is named after Saad Zaghloul, a significant figure in Egyptian history. 
\nSome key facts about Saad Zaghloul:
\nPolitical Leader: Saad Zaghloul (1859–1927) was a prominent Egyptian nationalist leader and the founder of the Wafd Party. He played a crucial role in Egypt’s struggle for independence from British rule.
\nWafd Party: Under Zaghloul’s leadership, the Wafd Party became a major political force advocating for Egyptian self-determination and constitutional reforms. Saad Zaghloul's efforts and leadership were instrumental in the eventual granting of limited independence to Egypt in 1922, which marked the beginning of a new era in Egyptian politics.
""",
    );
  }
}
