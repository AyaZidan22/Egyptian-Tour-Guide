import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ETG/business_logic/cubit/face_swap_cubit.dart';
import 'package:ETG/Component/custom_material_button.dart';

class FaceSwapScreen extends StatefulWidget {
  const FaceSwapScreen({super.key});

  @override
  FaceSwapScreenState createState() => FaceSwapScreenState();
}

class FaceSwapScreenState extends State<FaceSwapScreen> {
  File? image1;
  File? image2;
  String? resultImageUrl;

  final picker = ImagePicker();

  Future<void> pickImage1() async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);

    if (pickedFile != null) {
      setState(() {
        image1 = File(pickedFile.path);
      });
    }
  }

  Future<void> pickImage2() async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);

    if (pickedFile != null) {
      setState(() {
        image2 = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Text(
              'AI Face Swap',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF333333),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: pickImage1,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0XFFA17D1C)),
                    ),
                    height: 200,
                    width: 150,
                    child: image1 == null
                        ? const Center(
                            child: Icon(Icons.add_a_photo_outlined,
                                size: 50, color: Color(0XFFA17D1C)))
                        : Image.file(image1!, fit: BoxFit.cover),
                  ),
                ),
                GestureDetector(
                  onTap: pickImage2,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0XFFA17D1C)),
                    ),
                    height: 200,
                    width: 150,
                    child: image2 == null
                        ? const Center(
                            child: Icon(Icons.add_a_photo_outlined,
                                size: 50, color: Color(0XFFA17D1C)))
                        : Image.file(image2!, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomMaterialButton(
              onPressed: () {
                if (image1 != null && image2 != null) {
                  context
                      .read<FaceSwapCubit>()
                      .sendImagesToBackend(image1!, image2!);
                }
              },
              text: 'Generate',
            ),
            const SizedBox(height: 20),
            BlocListener<FaceSwapCubit, FaceSwapState>(
              listener: (context, state) {
                if (state is FaceSwapSuccess) {
                  setState(() {
                    resultImageUrl = state.resultImageUrl;
                  });
                } else if (state is FaceSwapError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: BlocBuilder<FaceSwapCubit, FaceSwapState>(
                builder: (context, state) {
                  if (state is FaceSwapLoading) {
                    return const CircularProgressIndicator(
                        color: Color(0xFFFAC738));
                  } else if (state is FaceSwapSuccess &&
                      resultImageUrl != null) {
                    return Container(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.5,
                      ),
                      child:
                          Image.network(resultImageUrl!, fit: BoxFit.contain),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
