import 'package:flutter/material.dart';
import 'package:ETG/statues.dart/statue_template.dart';

class AmenhotepPage extends StatelessWidget {
  const AmenhotepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomStatues(
      img: "img/Statues/Amen&tiya.jpg",
      statueName: "Amenhotep III and Tiye",
      url: "https://www.youtube.com/shorts/7A1LgP8BiTM",
      text2:
          """The statue is crafted from limestone and stands 7 meters tall with a width of 4.4 meters, reflecting the late 18th dynasty style of ancient Egypt. It portrays Pharaoh Amenhotep III and Queen Tiye, along with three of their daughters. Amenhotep III is depicted wearing the traditional nemes headdress adorned with a uraeus, a false beard, and a kilt, his hands resting on his knees. Queen Tiye, seated to his left, has her right arm around the pharaoh's waist, symbolizing her high status. She wears an ankle-length, form-fitting dress and a substantial wig featuring a vulture headdress, modius, and double uraei. The cobras and vulture atop their heads are crowned; the right cobra wears the white crown of Upper Egypt, while the left wears the red crown of Lower Egypt.\n\nThe three daughters are also depicted: Princess Henuttaneb stands matured between her parents, clad in a close-fitting dress and a wig adorned with modius and plumes, but without uraei. Next to Amenhotep stands a damaged figure of a younger daughter, Nebetah, while next to Tiye stands the figure of another princess, whose name has been lost to history. This statue is one of only two known depictions of Henuttaneb and the sole representation of Nebetah.\n\nThe artwork is thought to have been created around Amenhotep III's first sed festival, likely in the third decade of his reign. It is speculated that the statue was carved from high-quality limestone, possibly sourced from the same quarry used for other royal construction projects of the time, such as the open courtyard of TT192, belonging to Queen Tiye's steward Kheruef.""",
    );
  }
}
