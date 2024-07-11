import 'dart:convert';
import 'package:ETG/Component/network_handler.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'password_reset_state.dart';

class PasswordResetCubit extends Cubit<PasswordResetState> {
  PasswordResetCubit() : super(PasswordResetInitial());

  void resetPassword(String email, String otp, String password) async {
    emit(PasswordResetLoading());
    try {
      var response = await http.post(
        Uri.parse(passwordReset),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({'email': email, "otp": otp, 'newPassword': password}),
      );
      //print('Response status: ${response.statusCode}');
      //print('Response body: ${response.body}');
      var jsonResponse = jsonDecode(response.body);
      var message = jsonResponse['message'];
      if (response.statusCode == 200) {
        if (jsonResponse['status'] == 'SUCCESS') {
          emit(PasswordResetSuccess(message));
        } else {
          //var error = jsonResponse['message'];
          //print(error);
          emit(PasswordResetFailure(message));
        }
      } else {
        //var statuscode = response.statusCode;
        // print(
        //     'An error occurred during the post request with status code $statuscode');
        emit(const PasswordResetFailure(
            'An error occurred during the post request'));
      }
    } catch (e) {
      //print('An error occurred during the post request $e');
    }
  }
}
