import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class ImageSelector {
  static Future<Uint8List?> pickImage(BuildContext context) async {
    final ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      return await image.readAsBytes();
    } else {
      return null;
    }
  }

  static Future<void> saveImageToPrefs(Uint8List imageBytes) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('image', base64Encode(imageBytes));
  }

  static Future<Uint8List?> loadImageFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? imageData = prefs.getString('image');
    if (imageData != null) {
      return base64Decode(imageData);
    }
    return null;
  }
}
