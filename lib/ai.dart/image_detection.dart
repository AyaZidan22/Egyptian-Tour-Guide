import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:travelapp/Component/colors.dart';
import 'package:travelapp/Component/responsive_button.dart';
import 'package:travelapp/authpages/networkHandler.dart';
import 'package:http/http.dart' as http;
import 'package:travelapp/navpages/main_page.dart';
import 'package:travelapp/statues.dart/khafre.dart';
import 'package:travelapp/statues.dart/ramsis_II.dart';
import 'package:travelapp/statues.dart/tut.dart';

class ImageDetectionScreen extends StatefulWidget {
  const ImageDetectionScreen({super.key, required this.image});
  final File? image;
  @override
  ImageDetectionScreenState createState() => ImageDetectionScreenState();
}

class ImageDetectionScreenState extends State<ImageDetectionScreen> {
  String? detectionResult;
  bool isLoading = false;
  Future<void> detectImage() async {
    if (widget.image == null) {
      return;
    }
    setState(() {
      isLoading = true;
    });

    final url = Uri.parse(imageDetection);
    final request = http.MultipartRequest('POST', url)
      ..files
          .add(await http.MultipartFile.fromPath('image', widget.image!.path));

    try {
      final response = await http.Response.fromStream(await request.send());
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        final predictions = jsonResponse['predictions'];
        final prediction = predictions.isNotEmpty ? predictions[0] : null;
        final className = prediction != null ? prediction['class'] : "Null";
        if (className == "Ramsis II") {
          isLoading = false;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => RamsisPage()),
          );
        } else if (className == "Khafre") {
          isLoading = false;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => KhafrePage()),
          );
        } else if (className == "Tut") {
          isLoading = false;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => TutPage()),
          );
        } else {
          setState(() {
            detectionResult = className;
            isLoading = false;
          });
        }
        print(response.body);
      } else {
        setState(() {
          detectionResult = 'Error: ${response.statusCode}';
          isLoading = false;
        });
      }
    } catch (error) {
      setState(() {
        detectionResult = 'Error: $error';
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MainPage()),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.mainColor,
          ),
        ),
        title: const Text(
          "Statue Detection",
          style: TextStyle(color: AppColors.mainColor, fontSize: 16),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.file(
            widget.image!,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 20),
          ResponsiveButton(
            onClick: detectImage,
            text: 'Detect',
            backgroundColor: AppColors.mainColor,
            textColor: Colors.white,
            isResponsive: true,
          ),
          const SizedBox(height: 20),
          if (isLoading)
            const CircularProgressIndicator(color: AppColors.mainColor)
          else if (detectionResult != null)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Image is not recognized',
                style: TextStyle(fontSize: 15, color: AppColors.mainColor),
              ),
            ),
        ],
      ),
    );
  }
}
