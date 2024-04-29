import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelapp/Component/colors.dart';
import 'package:travelapp/Component/responsive_button.dart';
import 'package:travelapp/Component/select_image.dart';
import 'package:travelapp/navpages/profilepage.dart/editemailscreen.dart';
import 'package:travelapp/navpages/profilepage.dart/editnamescreen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? email;
  Uint8List? img;
  String? image;
  String? name;
  void selectImage() async {
    Uint8List? imageBytes = await ImageSelector.pickImage(context);
    if (imageBytes != null) {
      await ImageSelector.saveImageToPrefs(imageBytes);
      setState(() {
        img = imageBytes;
      });
    }
  }

  itemProfile(String? title, String? subtitle, IconData? iconData,
      VoidCallback? onPressed) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: Border.all(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(
            title!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subtitle!),
          leading: Icon(iconData!),
          trailing: GestureDetector(
            onTap: onPressed!,
            child: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: FutureBuilder(
            future: SharedPreferences.getInstance(),
            builder: (context, AsyncSnapshot<SharedPreferences> snapshot) {
              if (snapshot.hasData) {
                name = snapshot.data?.getString('name') ?? '';
                email = snapshot.data?.getString('email') ?? '';
                image = snapshot.data?.getString("image") ?? '';
                return SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundImage: image!.isEmpty
                                  ? const AssetImage("img/profile_icon.png")
                                  : MemoryImage(base64Decode(image!))
                                      as ImageProvider,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.add_a_photo_outlined,
                                    size: 20,
                                  ),
                                  color: Colors.brown,
                                  onPressed: () {
                                    selectImage();
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      itemProfile(
                        'Name',
                        '$name',
                        CupertinoIcons.person,
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EditNameScreen()),
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      itemProfile(
                        'E-mail',
                        '$email',
                        CupertinoIcons.mail,
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EditEmailScreen()),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ResponsiveButton(
                        text: "Log Out",
                        backgroundColor: AppColors.mainColor,
                        textColor: Colors.white,
                        isResponsive: true,
                        onClick: () {},
                      )
                    ],
                  ),
                );
              } else {
                return const Center(
                    child: CircularProgressIndicator(
                  color: AppColors.mainColor,
                ));
              }
            }));
  }
}
