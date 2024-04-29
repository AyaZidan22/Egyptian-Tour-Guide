// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelapp/Component/custom_materialbutton.dart';
import 'package:travelapp/Component/custom_textfield.dart';
import 'package:http/http.dart' as http;
import 'package:travelapp/authpages/networkHandler.dart';
import 'dart:convert';
import 'package:travelapp/navpages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool vis = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late SharedPreferences prefs;
  bool sharedPrefInitialized = false;

  @override
  void initState() {
    super.initState();
    initSharedPref();
  }

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
    sharedPrefInitialized = true;
  }

  void loginUser(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(
            color: Color.fromRGBO(255, 183, 77, 1),
          ),
        );
      },
    );
    var regBody = {
      "email": emailController.text,
      "password": passwordController.text,
    };
    try {
      var response = await http.post(
        Uri.parse(login),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(regBody),
      );
      var jsonResponse = jsonDecode(response.body);
      var data = jsonResponse['data'];
      if (jsonResponse['status'] == 'SUCCESS') {
        var myToken = jsonResponse['token'];
        prefs.setString("token", myToken);
        var userId = data.isNotEmpty ? data[0]['userId'] : null;
        prefs.setString("userId", userId);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainPage()));
      } else {
        Navigator.pop(context);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(jsonResponse['status']),
              content: Text(jsonResponse['message']),
              actions: [
                TextButton(
                  child: Text(
                    'OK',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
      print('Response status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    } catch (e) {
      print("An error occurred during the post request: $e");
      Navigator.pop(context);
    }
  }

  void resetPasswordRequest(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(
            color: Color.fromRGBO(255, 183, 77, 1),
          ),
        );
      },
    );
    var regBody = {
      "email": emailController.text,
    };
    try {
      var response = await http.post(
        Uri.parse(reqPassReset),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(regBody),
      );
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        if (jsonResponse['status'] == 'PENDING') {
          Navigator.pop(context);
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
                      Navigator.of(context).pushNamed("passwordReset");
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
      } else {
        print(
            'Password reset request failed with status code: ${response.statusCode}');
        Navigator.pop(context);
      }
    } catch (e) {
      print('An error occurred during the password reset request: $e');
      Navigator.pop(context);
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
                  "Welcome back,",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 30,
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
                    }),
                controller: passwordController,
                hinText: "Password",
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
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          resetPasswordRequest(context);
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ],
                  )),
              CustomMaterialButton(
                text: "Sign In",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    loginUser(context);
                  }
                },
                backgroundColor: const Color.fromRGBO(255, 183, 77, 1),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Not a member?",
                    style: TextStyle(fontSize: 15),
                  ),
                  MaterialButton(
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minWidth: 2.5,
                    onPressed: () {
                      Navigator.of(context).pushNamed("RegisterPage");
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
