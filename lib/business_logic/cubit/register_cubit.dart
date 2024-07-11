import 'dart:convert';

import 'package:ETG/Component/network_handler.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  void registerUser(String email, String password, String username) async {
    emit(RegisterLoading());
    var regBody = {
      "email": email,
      "password": password,
      "name": username,
    };
    try {
      var response = await http.post(
        Uri.parse(registration),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(regBody),
      );
      //print('Response status code: ${response.statusCode}');
      //print('Response body: ${response.body}');

      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      String status = jsonResponse['status'];
      String message = jsonResponse['message'];
      if (status == 'PENDING') {
        emit(RegisterPending());
      } else if (status == 'FAILED') {
        emit(RegisterFailure("Register Failed: $message"));
      } else {
        //print('Unexpected response status: $status');
      }
    } catch (e) {
      //print("An error occurred during the post request: $e");
    }
  }
}
