import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:travelapp/Component/custom_materialbutton.dart';
import 'package:travelapp/authpages/networkHandler.dart';

class VerificationPage extends StatefulWidget {
  final String email;
  const VerificationPage({required this.email, super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  TextEditingController verificationCodeController = TextEditingController();

  Future<void> verifyEmail() async {
    if (verificationCodeController.text.isNotEmpty) {
      var regBody = {
        "email": widget.email,
        "otp": verificationCodeController.text,
      };
      try {
        var response = await http.post(
          Uri.parse(verifyEmailUrl),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody),
        );
        print('Request body: $regBody');
        print('Response status code: ${response.statusCode}');
        print('Response body: ${response.body}');

        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        String status = jsonResponse['status'];
        String message = jsonResponse['message'];
        
        if (status == 'SUCCESS') {
        
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Verification Success"),
                content: Text(message),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed("LoginPage");
                    },
                    child: const Text(
                      'OK',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              );
            },
          );
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Verification Failed"),
                content: Text(message),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'OK',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              );
            },
          );
        }
      } catch (e) {
        print("An error occurred during the post request: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text('Verify Account'),
        backgroundColor: Colors.grey.shade300,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: verificationCodeController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400)),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Verification Code")),
              const SizedBox(height: 20.0),
              CustomMaterialButton(
                onPressed: () {
                  verifyEmail();
                },
                text: "Verify",
                backgroundColor: const Color.fromRGBO(255, 183, 77, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
