import 'dart:convert';
import 'package:ETG/Component/network_handler.dart';
import 'package:ETG/Component/token_function.dart';
import 'package:ETG/business_logic/cubit/login_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
    try {
      final response = await http.post(
        Uri.parse(loginRequest),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      //print('Response status: ${response.statusCode}');
      //print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        if (jsonResponse['status'] == 'SUCCESS') {
          final token = jsonResponse['token'];
          final data = jsonResponse['data'];

          if (token != null && data != null && data.isNotEmpty) {
            await TokenManager.storeToken(token);
            var userId = data['userId'];
            var name = data['name'];
            var email = data['email'];
            if (userId != null && name != null && email != null) {
              await TokenManager.storeUserId(userId);
              await TokenManager.storeUserData(email, name);
              emit(LoginSuccess());
            } else {
              emit(LoginFailure(
                  'Required fields are missing in the response data'));
            }
          } else {
            emit(LoginFailure('Token or data is null or empty'));
          }
        } else {
          final errorMessage = jsonResponse['message'] ?? 'Unknown error';
          //print('Error message: $errorMessage');
          emit(LoginFailure('An error occurred: $errorMessage'));
        }
      } else {
        //var statuscode = response.statusCode;
        //print('An error occurred with status code $statuscode');
        emit(LoginFailure('An error occurred during the post request'));
      }
    } catch (e) {
      //print('Exception: $e');
      emit(LoginFailure('An exception occurred: $e'));
    }
  }
}
