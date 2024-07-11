import 'package:ETG/Component/network_handler.dart';
import 'package:ETG/Component/token_function.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'log_out_state.dart';

class LogOutCubit extends Cubit<LogOutState> {
  LogOutCubit() : super(LogOutInitial());

  Future<void> logoutUser() async {
    emit(LogOutLoading());
    try {
      final token = await TokenManager.getToken();

      if (token == null) {
        emit(const LogOutFailed('No token found'));
        return;
      }

      final response = await http.post(
        Uri.parse(logoutrequet),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        await TokenManager.deleteData();
        emit(LogOutSuccess());
        //print(response.body);
      } else {
        emit(const LogOutFailed('Logout failed'));
        //print(response.body);
      }
    } catch (e) {
      emit(LogOutFailed('Error during logout: $e'));
    }
  }
}
