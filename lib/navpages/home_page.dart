import 'package:ETG/statues.dart/akhenaten.dart';
import 'package:ETG/statues.dart/amenhotep_iii.dart';
import 'package:ETG/statues.dart/khafre.dart';
import 'package:ETG/statues.dart/nefertiti.dart';
import 'package:ETG/statues.dart/ramsis_ii.dart';
import 'package:ETG/statues.dart/tut.dart';
import 'package:ETG/statues.dart/zoser.dart';
import 'package:ETG/streets/al_mu_ezz.dart';
import 'package:ETG/streets/aswam.dart';
import 'package:ETG/streets/el_ahram.dart';
import 'package:ETG/streets/el_mosky.dart';
import 'package:ETG/streets/el_taameem.dart';
import 'package:ETG/streets/el_tahrir.dart';
import 'package:ETG/streets/huda_shaarawi.dart';
import 'package:ETG/streets/mohamed_ali.dart';
import 'package:ETG/streets/om_kalthoum.dart';
import 'package:ETG/streets/port_said.dart';
import 'package:ETG/streets/saad_zaghalol.dart';
import 'package:ETG/streets/safia_zaghlol.dart';
import 'package:ETG/streets/salah_salem.dart';
import 'package:ETG/streets/talaat_harb.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ETG/business_logic/cubit/detection_cubit.dart';

enum DetectionType { street, statue }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> features = [];

  @override
  void initState() {
    super.initState();

    features = [
      {
        "img": "img/others/logo1.png",
        "text": "Detect Statue",
        "function": () => showImageSourceBottomSheet(DetectionType.statue)
      },
      {
        "img": "img/others/street.jpg",
        "text": "Detect Street",
        "function": () => showImageSourceBottomSheet(DetectionType.street)
      },
    ];
  }

  final List<Map<String, dynamic>> categories = [
    {"name": "Beaches", "icon": Icons.beach_access},
    {"name": "Ancient Egypt", "icon": Icons.account_balance},
    {"name": "Museums", "icon": Icons.museum},
    {"name": "Mountains", "icon": Icons.terrain},
    {"name": "Oases", "icon": Icons.grass},
  ];

  final List<Map<String, String>> topActivities = [
    {"img": "img/TopActivities/nile.jpg", "name": "Nile Cruises"},
    {"img": "img/TopActivities/ballon.jpg", "name": "Hot Air Balloons Ride"},
    {
      "img": "img/TopActivities/sound-and-lights-hows.webp",
      "name": "Sound And Light Shows"
    },
    {"img": "img/TopActivities/c5.jpg", "name": "Star Watching In The Desert"},
    {"img": "img/TopActivities/diving.jpg", "name": "Water Sports"},
    {"img": "img/TopActivities/Hiking1.jpg", "name": "Climbing & Hiking"}
  ];

  int current = 0;
  final CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<DetectionCubit, DetectionState>(
      listener: (context, state) async {
        if (state is DetectionError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        } else if (state is StreetDetectionSuccess) {
          handleStreetDetection(context, state.value);
        } else if (state is StatueDetectionSuccess) {
          handleStatueDetection(context, state.className);
        }
      },
      child: BlocBuilder<DetectionCubit, DetectionState>(
        builder: (context, state) {
          return Stack(
            children: [
              ListView(
                padding: EdgeInsets.zero,
                children: [
                  CarouselSlider.builder(
                      itemCount: features.length,
                      options: CarouselOptions(
                        height: 400,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        autoPlay: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            current = index;
                          });
                        },
                      ),
                      itemBuilder: (context, i, realIdx) {
                        return Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 400,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(features[i]['img']),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              bottom: 45,
                              left: 10,
                              child: Text(
                                features[i]['text']!,
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 20,
                                    color: const Color(0xFFFAF7F0),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 10,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFAF7F0),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: features[i]['function'],
                                    icon: const Icon(
                                      Icons.add_a_photo_outlined,
                                      size: 20,
                                      color: Color(0XFFA17D1C),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 30,
                              right: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: features.asMap().entries.map((entry) {
                                  return GestureDetector(
                                    onTap: () =>
                                        controller.animateToPage(entry.key),
                                    child: Container(
                                      width: 8.0,
                                      height: 8.0,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: 4.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? Colors.white
                                                : const Color(0xFFFAF7F0))
                                            .withOpacity(current == entry.key
                                                ? 0.9
                                                : 0.4),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            )
                          ],
                        );
                      }),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 20),
                    child: Text(
                      "Categories",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 15,
                        color: const Color(0XFF211A0A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: categories.map((category) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 100,
                          child: Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0XFFF5F0DB),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    final categoryName = category["name"];
                                    switch (categoryName) {
                                      case "Ancient Egypt":
                                        Navigator.of(context)
                                            .pushNamed("AncientEgypt");
                                        break;
                                      case "Beaches":
                                        Navigator.of(context)
                                            .pushNamed("Beaches");
                                        break;
                                      case "Museums":
                                        Navigator.of(context)
                                            .pushNamed("Museums");
                                        break;
                                      case "Mountains":
                                        Navigator.of(context)
                                            .pushNamed("Mountains");
                                        break;
                                      case "Oases":
                                        Navigator.of(context)
                                            .pushNamed("Oases");
                                        break;
                                    }
                                  },
                                  icon: Icon(
                                    category["icon"],
                                    size: 25,
                                    color: const Color(0XFFA17D1C),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                category["name"]!,
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0XFF211A0A),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Top Activities",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 15,
                        color: const Color(0XFF211A0A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: topActivities.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        childAspectRatio: 12 / 14,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            switch (topActivities[index]["name"]) {
                              case "Nile Cruises":
                                Navigator.of(context).pushNamed("nileCruises");
                                break;
                              case "Sound And Light Shows":
                                Navigator.of(context).pushNamed("lightShows");
                                break;
                              case "Hot Air Balloons Ride":
                                Navigator.of(context).pushNamed("hotBallon");
                                break;
                              case "Water Sports":
                                Navigator.of(context).pushNamed("waterSports");
                                break;
                              case "Star Watching In The Desert":
                                Navigator.of(context).pushNamed("starWatching");
                                break;
                              case "Climbing & Hiking":
                                Navigator.of(context)
                                    .pushNamed("climbingmountains");
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(topActivities[index]["img"]!),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.5),
                                  ],
                                ),
                              ),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                topActivities[index]["name"]!,
                                style: GoogleFonts.plusJakartaSans(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              if (state is DetectionLoading)
                Container(
                  color: Colors.black.withOpacity(0.5),
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: Color(0XFFA17D1C),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    ));
  }

  Future<void> handleStreetDetection(BuildContext context, String value) async {
    if (value.contains('Hoda Shaarawy St')) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HudaShaarawiPage()),
      );
    } else if (value.contains('محمد على')) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MohamedAliPage()),
      );
    } else if (value.contains('BOUR SAID ST')) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PortSaidPage()),
      );
    } else if (value.contains('الاهرام')) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ElAhramPage()),
      );
    } else if (value.contains('طلعت حرب')) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TalaatHarbPage()),
      );
    } else if (value.contains('ام كلثوم')) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OmKalthoumPage()),
      );
    } else if (value.contains('المعز لدين')) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AlMuezzliDinAllahPage()),
      );
    } else if (value.contains('الموسكى')) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ElMoskyPage()),
      );
    } else if (value.contains('التحرير')) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ElTahrirPage()),
      );
    } else if (value.contains('صلاح سالم')) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SalahSalemPage()),
      );
    } else if (value.contains("سعد زغلول")) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SaadZaghalolPage()),
      );
    } else if (value.contains("صفية زغلول")) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SafiaZaghlolPage()),
      );
    } else if (value.contains("التأميم")) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ElTaameemPage()),
      );
    } else if (value.contains("أسوان")) {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AswanPage()),
      );
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(value)),
          );
    }
  }

  Future<void> handleStatueDetection(
      BuildContext context, String className) async {
    switch (className) {
      case "Ramesses II":
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RamsisPage()),
        );
        break;
      case "Khafre":
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const KhafrePage()),
        );
        break;
      case "Tut":
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TutPage()),
        );
        break;
      case 'Akhenaten':
        await await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AkhenatenPage()),
        );
      case 'Zoser':
        await await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ZoserPage()),
        );
      case 'Nefertiti':
        await await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NefertitiPage()),
        );
      case 'Amenhotep III and Tiye':
        await await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AmenhotepPage()),
        );
    }
  }

  void showImageSourceBottomSheet(DetectionType detectionType) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              iconColor: const Color(0XFFA17D1C),
              leading: const Icon(Icons.camera_alt),
              title: const Text('Camera'),
              onTap: () {
                Navigator.pop(context);
                context
                    .read<DetectionCubit>()
                    .detectObject(detectionType, ImageSource.camera);
              },
            ),
            ListTile(
              iconColor: const Color(0XFFA17D1C),
              leading: const Icon(Icons.photo),
              title: const Text('Gallery'),
              onTap: () {
                Navigator.pop(context);
                context
                    .read<DetectionCubit>()
                    .detectObject(detectionType, ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }
}
