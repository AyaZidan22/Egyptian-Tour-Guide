import 'package:ETG/streets/street_template.dart';
import 'package:flutter/material.dart';

class TalaatHarbPage extends StatelessWidget {
  const TalaatHarbPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStreets(
      streetName: "Talaat Harb",
      url: "https://www.youtube.com/watch?v=KxwXkgYeRHQ",
      img: "img/streets/شارع طلعت حرب.jpg",
      maintext:
          """Talaat Harb Street is a prominent street located in downtown Cairo, Egypt. It is named after Talaat Harb, a renowned Egyptian economist and financier who played a key role in the country's economic development in the early 20th century.
\nThe origins of the street date back to the 19th century, when it was part of the wider modernization efforts undertaken during the reign of Muhammad Ali Pasha. The street was originally known as Sharia al-Gomhouriya (Republic Street).
\nIn the early 1900s, the street began to develop into a major commercial and financial hub in Cairo. Many banks, insurance companies, and other businesses established their headquarters along Talaat Harb Street, Talaat Harb himself made significant contributions to the street's growth and development. In 1920, he founded the Bank Misr, the first major national bank in Egypt, which was headquartered on the street.
\nSome key facts about Talaat Harb:
\nTalaat Harb (1867-1941) was born in Cairo, Egypt to a prominent merchant family. He received his early education in Egypt before going on to study economics and finance in France.
\nPioneering Banker and Industrialist:
\nIn 1920, Harb founded Bank Misr, the first major national bank in Egypt. This was a significant milestone in promoting Egyptian economic independence.
\nUnder Harb's leadership, Bank Misr grew to become one of the largest and most influential banks in the country.
\nHarb also helped establish other important financial institutions, such as the Egyptian Stock Exchange and the Federation of Egyptian Industries.
\nHe played a key role in promoting industrialization and the growth of Egyptian-owned businesses, reducing the country's reliance on foreign capital.
\nNationalist and Reformer:
\nTalaat Harb was a prominent nationalist who advocated for greater economic and political independence for Egypt from British colonial rule.
\nHe believed that building a strong Egyptian-owned private sector was crucial to achieving this goal.
\nHarb supported the 1919 Egyptian revolution and other nationalist movements of his time.
\nHe was also involved in various social and educational reform efforts, including establishing schools and technical institutes.""",
    );
  }
}
