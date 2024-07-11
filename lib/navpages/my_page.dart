import 'dart:convert';
import 'dart:typed_data';

import 'package:ETG/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ETG/Component/custom_material_button.dart';
import 'package:ETG/Component/select_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ETG/business_logic/cubit/log_out_cubit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
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

  itemProfile(
    String? title,
    String? subtitle,
    IconData? iconData,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
      child: Container(
        width: 350,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xFFFAF7F0),
          border: Border.all(color: const Color(0xFFF0E3C2)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(
            title!,
            style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            subtitle!,
            style: GoogleFonts.plusJakartaSans(),
          ),
          leading: Icon(
            iconData!,
            color: const Color(0XFFA17D1C),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              ? const AssetImage("img/others/user.png")
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
                              color: const Color(0XFFA17D1C),
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
                    CupertinoIcons.person_fill,
                  ),
                  const SizedBox(height: 10),
                  itemProfile(
                    'E-mail',
                    '$email',
                    CupertinoIcons.mail_solid,
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  BlocConsumer<LogOutCubit, LogOutState>(
                    listener: (context, state) {
                      if (state is LogOutSuccess) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomePage()),
                        );
                      } else if (state is LogOutFailed) {
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(state.error)),
                          );
                        }
                      }
                    },
                    builder: (context, state) {
                      if (state is LogOutLoading) {
                        return const CircularProgressIndicator(
                          color: Color(0xFFFAC738),
                        );
                      }
                      return CustomMaterialButton(
                        text: "Log Out",
                        onPressed: () {
                          context.read<LogOutCubit>().logoutUser();
                        },
                      );
                    },
                  ),
                ],
              ),
            );
          } else {
            return const Center(
                child: CircularProgressIndicator(
              color: Color(0XFFA17D1C),
            ));
          }
        },
      ),
    );
  }
}
