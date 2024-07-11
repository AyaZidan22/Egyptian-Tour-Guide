import 'dart:io';
import 'dart:convert';

import 'package:ETG/Component/network_handler.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'face_swap_state.dart';

class FaceSwapCubit extends Cubit<FaceSwapState> {
  FaceSwapCubit() : super(FaceSwapInitial());

  Future<void> sendImagesToBackend(File image1, File image2) async {
    try {
      emit(FaceSwapLoading());
      var request = http.MultipartRequest('POST', Uri.parse(faceswap));

      request.files
          .add(await http.MultipartFile.fromPath('SourceImage', image1.path));
      request.files
          .add(await http.MultipartFile.fromPath('TargetImage', image2.path));

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        final responseBody = json.decode(response.body);
        final resultImageUrl = responseBody['ResultImageUrl'];

        emit(FaceSwapSuccess(resultImageUrl));
        //print('Images uploaded successfully!');
        //print('Response body: ${response.body}');
      } else {
        emit(const FaceSwapError('Failed to upload images'));
        //print('Failed to upload images. Status code: ${response.statusCode}');
      }
    } catch (e) {
      emit(FaceSwapError('Error sending images to backend: $e'));
      //print('Error sending images to backend: $e');
    }
  }
}
