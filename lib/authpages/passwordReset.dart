// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:travelapp/Component/custom_materialbutton.dart';
import 'package:travelapp/Component/custom_textfield.dart';
import 'package:http/http.dart' as http;
import 'package:travelapp/authpages/networkHandler.dart';
import 'dart:convert';

class PasswordReset extends StatefulWidget {
  const PasswordReset({Key? key}) : super(key: key);

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool vis = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final otpController = TextEditingController();

  void resetPassword() async {
    if (_formKey.currentState!.validate()) {
      String email = emailController.text;
      String newPassword = passwordController.text;
      String otp = otpController.text;
      var requestBody = {
        "email": email,
        "newPassword": newPassword,
        "otp": otp
      };

      try {
        var response = await http.post(
          Uri.parse(passwordReset),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(requestBody),
        );
        var jsonResponse = jsonDecode(response.body);
        if (jsonResponse['status'] == 'SUCCESS') {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Password Reset'),
                content: Text(jsonResponse['message']),
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
                title: const Text('Password Reset Failed'),
                content: Text(jsonResponse['message']),
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
      backgroundColor: Colors.grey[300],
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Container(
              height: 50,
            ),
            const Image(
              image: AssetImage("img/df.png"),
              width: 100,
              height: 120,
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: const Text(
                "Password Reset",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 30,
            ),
            CustomTextField(
              controller: otpController,
              hinText: "Password Reset Code",
              obscureText: false,
              validator: (otp) {
                if (otp!.isEmpty) return "Password Reset Code can't be empty";
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              controller: emailController,
              hinText: "Email",
              obscureText: false,
              validator: (email) {
                if (email!.isEmpty) return "Email can't be empty";
                if (!email.contains("@")) return "Email is Invalid";
                return null;
              },
            ),
            Container(
              height: 10,
            ),
            CustomTextField(
              icon: IconButton(
                icon: Icon((vis ? Icons.visibility_off : Icons.visibility)),
                onPressed: () {
                  setState(() {
                    vis = !vis;
                  });
                },
              ),
              controller: passwordController,
              hinText: "New Password",
              obscureText: vis,
              validator: (password) {
                if (password!.isEmpty) {
                  return "Password can't be empty";
                }
                if (password.length < 8) {
                  return "Password length must have >=8";
                }
                return null;
              },
            ),
            const SizedBox(height: 30),
            CustomMaterialButton(
              text: "Update Password",
              onPressed: () {
                resetPassword();
              },
              backgroundColor: const Color.fromRGBO(255, 183, 77, 1),
            ),
          ],
        ),
      ),
    );
  }
}
