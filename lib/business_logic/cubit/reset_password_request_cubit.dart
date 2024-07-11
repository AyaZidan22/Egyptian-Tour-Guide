import 'dart:convert';

import 'package:ETG/Component/network_handler.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
part 'reset_password_request_state.dart';

class ResetPasswordRequestCubit extends Cubit<ResetPasswordRequestState> {
  ResetPasswordRequestCubit() : super(ResetPasswordRequestInitial());

  void resetPasswordRequest(String email) async {
    emit(ResetPasswordRequestLoading());
    try {
      var response = await http.post(
        Uri.parse(reqPassReset),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({'email': email}),
      );
      //print('Response status: ${response.statusCode}');
      //print('Response body: ${response.body}');
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        if (jsonResponse['status'] == 'PENDING') {
          emit(ResetPasswordRequestPending());
        } else {
          final errorMessage = jsonResponse['message'] ?? 'Unknown error';
          //print('Error message: $errorMessage');
          emit(ResetPasswordRequestFailure(
              "Password reset request failed: $errorMessage"));
        }
      } else {
        //var statuscode = response.statusCode;
        //print('An error occurred with status code $statuscode');
        emit(const ResetPasswordRequestFailure(
            "An error occurred during the password reset request"));
      }
    } catch (e) {
      //print('An error occurred during the password reset request: $e');
    }
  }
}
