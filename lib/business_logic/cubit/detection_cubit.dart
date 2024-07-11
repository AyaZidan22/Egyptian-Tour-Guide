import 'dart:convert';
import 'dart:io';

import 'package:ETG/Component/network_handler.dart';
import 'package:ETG/navpages/home_page.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
part 'detection_state.dart';

class DetectionCubit extends Cubit<DetectionState> {
  DetectionCubit() : super(DetectionInitial());

  Future<void> detectObject(DetectionType type, ImageSource source) async {
    try {
      final imageFile = await getImage(source);
      if (imageFile == null) {
        return;
      }

      String detectionEndpoint;
      switch (type) {
        case DetectionType.street:
          detectionEndpoint = streetDetection;
          break;
        case DetectionType.statue:
          detectionEndpoint = imageDetection;
          break;
      }

      emit(DetectionLoading());

      // Send the image to the backend
      final response = await sendImageToBackend(imageFile, detectionEndpoint);

      if (type == DetectionType.street) {
        final value = response?['value'];
        //print(value);
        if (value.trim().isEmpty) {
          emit(const DetectionError("Street is not recognized"));
        } else {
          emit(StreetDetectionSuccess(value));
        }
      } else if (type == DetectionType.statue) {
        final classname = response?['top'];
        //print(classname);
        if (classname != 'null') {
          emit(StatueDetectionSuccess(classname));
        } else {
          emit(const DetectionError("Statue is not recognized"));
        }
      }
    } catch (e) {
      //emit(DetectionError(e.toString()));
    }
  }

  Future<File?> getImage(ImageSource source) async {
    try {
      await requestPermissions();

      final image =
          await ImagePicker().pickImage(source: source, imageQuality: 50);
      if (image == null) {
        emit(const DetectionError('No image selected'));
        return null;
      }

      final File imageFile = File(image.path);
      //final imageBytes = await imageFile.readAsBytes();
      //final imageSize = imageBytes.lengthInBytes;
      //print('Image size: $imageSize bytes');
      final Directory directory = await getApplicationDocumentsDirectory();
      final String newPath =
          '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
      final File newImage = await imageFile.copy(newPath);

      final result = await ImageGallerySaver.saveFile(newImage.path);
      if (result['isSuccess']) {
        return newImage;
      } else {
        emit(const DetectionError('Failed to save image to gallery'));
        return null;
      }
    } catch (e) {
      emit(DetectionError('Failed to pick image: ${e.toString()}'));
      return null;
    }
  }

  Future<void> requestPermissions() async {
    await [
      Permission.storage,
      Permission.photos,
    ].request();
  }

  Future<Map<String, dynamic>?> sendImageToBackend(
      File imageFile, String detectionEndpoint) async {
    try {
      final url = Uri.parse(detectionEndpoint);

      final request = http.MultipartRequest('POST', url)
        ..files.add(await http.MultipartFile.fromPath('image', imageFile.path));

      final streamedResponse = await request.send();

      if (streamedResponse.statusCode != 200) {
        emit(DetectionError(
            'Failed to upload image with status code: ${streamedResponse.statusCode}'));
        return null;
      } else {
        final response = await http.Response.fromStream(streamedResponse);
        final res = response.body;
        //print('Response body: $res');
        final Map<String, dynamic>? responseBody =
            json.decode(res) as Map<String, dynamic>?;
        return responseBody;
      }
    } catch (e) {
      //print('Error: ${e.toString()}');
      emit(DetectionError('Failed to send image to backend: ${e.toString()}'));
      return null;
    }
  }
}
