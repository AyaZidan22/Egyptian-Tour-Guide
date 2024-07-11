import 'dart:convert';

import 'package:ETG/Component/network_handler.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(VerificationInitial());
  Future<void> verifyEmail(String email, String otp) async {
    emit(VerificationLoading());
    var regBody = {
      "email": email,
      "otp": otp,
    };

    var response = await http.post(
      Uri.parse(verifyEmailUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(regBody),
    );
    // print('Request body: $regBody');
    // print('Response status code: ${response.statusCode}');
    // print('Response body: ${response.body}');

    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    String status = jsonResponse['status'];
    String message = jsonResponse['message'];

    if (status == 'SUCCESS') {
      emit(VerificationSuccess());
    } else {
      emit(VerificationFailed(error: 'An error occurred:$message'));
    }
  }
}
