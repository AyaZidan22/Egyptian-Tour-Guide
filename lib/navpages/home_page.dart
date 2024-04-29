import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travelapp/Component/colors.dart';
import 'package:http/http.dart' as http;
import 'package:travelapp/ai.dart/image_detection.dart';
import 'package:travelapp/authpages/networkHandler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  __HomePageState createState() => __HomePageState();
}

class __HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List Category = [
    {
      "name": "Ancient Egypt",
    },
    {
      "name": "Beaches",
    },
    {
      "name": "Museums",
    },
    {
      "name": "Mountains",
    },
    {
      "name": "Oases",
    },
  ];
  List topActivities = [
    {
      "img": "img/nile.jpg",
      "name": "Nile Cruises",
    },
    {
      "img": "img/sound-and-lights-hows.webp",
      "name": "Sound And Light Shows",
    },
    {
      "img": "img/ballon.jpg",
      "name": "Hot Air Balloons Ride",
    },
    {
      "img": "img/diving.jpg",
      "name": "Water Sports",
    },
    {
      "img": "img/c5.jpg",
      "name": "Star Watching In The Desert",
    },
  ];
  void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const Dialog(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(color: AppColors.mainColor),
                SizedBox(width: 20),
                Text("Uploading..."),
              ],
            ),
          ),
        );
      },
    );
  }

  void hideLoadingDialog(BuildContext context) {
    Navigator.pop(context);
  }

  Future<void> _getImage(ImageSource source) async {
    final image =
        await ImagePicker().pickImage(source: source, imageQuality: 50);
    if (image != null) {
      showLoadingDialog(context);

      await sendImageToBackend(File(image.path));
      hideLoadingDialog(context);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ImageDetectionScreen(
            image: File(image.path),
          ),
        ),
      );
    }
  }

  Future<void> sendImageToBackend(File imageFile) async {
    final url = Uri.parse(imageDetection);
    try {
      var request = http.MultipartRequest('POST', url)
        ..files.add(await http.MultipartFile.fromPath('image', imageFile.path));

      var response = await request.send();
      if (response.statusCode == 200) {
        print('Image uploaded successfully');
      } else {
        print('Failed to upload image. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  Future<void> getImage() async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(
                  Icons.photo_library,
                  color: AppColors.mainColor,
                ),
                title: const Text('Choose from Gallery',
                    style: TextStyle(fontSize: 13)),
                onTap: () {
                  Navigator.pop(context);
                  _getImage(ImageSource.gallery);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.camera_alt,
                  color: AppColors.mainColor,
                ),
                title: const Text('Take a Picture',
                    style: TextStyle(fontSize: 13)),
                onTap: () {
                  Navigator.pop(context);
                  _getImage(ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: ListView(
        children: [
          Stack(alignment: Alignment.bottomLeft, children: [
            Image.asset("img/detectionphoto.jpg"),
            Positioned(
                bottom: 45,
                left: 10,
                child: Text("Detect What You're Seeing",
                    style: GoogleFonts.alkatra(
                        fontSize: 25, color: Colors.white))),
            Positioned(
              bottom: 5,
              left: 10,
              child: Stack(alignment: Alignment.center, children: [
                Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20))),
                IconButton(
                    onPressed: () {
                      getImage();
                    },
                    icon: const Icon(
                      Icons.add_a_photo_outlined,
                      size: 20,
                      color: AppColors.mainColor,
                    )),
              ]),
            )
          ]),
          const SizedBox(
            height: 50,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(children: [
                for (int i = 0; i < Category.length; i++)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade100),
                    child: TextButton(
                      style: ButtonStyle(
                        visualDensity: VisualDensity.comfortable,
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade100),
                      ),
                      onPressed: () {
                        if (Category[i]["name"] == "Ancient Egypt") {
                          Navigator.of(context).pushNamed("AncientEgypt");
                        } else if (Category[i]["name"] == "Beaches") {
                          Navigator.of(context).pushNamed("Beaches");
                        } else if (Category[i]["name"] == "Museums") {
                          Navigator.of(context).pushNamed("Museums");
                        } else if (Category[i]["name"] == "Mountains") {
                          Navigator.of(context).pushNamed("Mountains");
                        } else {
                          Navigator.of(context).pushNamed("Oases");
                        }
                      },
                      child: Text(Category[i]["name"],
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 13)),
                    ),
                  )
              ]),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Top Activities",
              style: GoogleFonts.alkatra(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 155,
            child: ListView.builder(
              itemCount: topActivities.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Container(
                  padding: const EdgeInsets.only(right: 15),
                  child: InkWell(
                    onTap: () {
                      if (topActivities[i]["name"] == "Nile Cruises") {
                        Navigator.of(context).pushNamed("nileCruises");
                      } else if (topActivities[i]["name"] ==
                          "Sound And Light Shows") {
                        Navigator.of(context).pushNamed("lightShows");
                      } else if (topActivities[i]["name"] ==
                          "Hot Air Balloons Ride") {
                        Navigator.of(context).pushNamed("hotBallon");
                      } else if (topActivities[i]["name"] == "Water Sports") {
                        Navigator.of(context).pushNamed("waterSports");
                      } else {
                        Navigator.of(context).pushNamed("starWatching");
                      }
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 175,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(topActivities[i]["img"]),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          topActivities[i]["name"],
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
