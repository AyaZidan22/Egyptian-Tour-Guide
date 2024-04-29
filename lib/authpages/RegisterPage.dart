// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelapp/Component/custom_materialbutton.dart';
import 'package:travelapp/Component/custom_textfield.dart';
import 'package:travelapp/Component/select_image.dart';
import 'package:travelapp/authpages/networkHandler.dart';
import 'package:http/http.dart' as http;
import 'package:travelapp/authpages/verification_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final aboutUsController = TextEditingController();
  bool vis = true;
  Uint8List? _image;

  void selectImage() async {
    Uint8List? imageBytes = await ImageSelector.pickImage(context);
    if (imageBytes != null) {
      await ImageSelector.saveImageToPrefs(imageBytes);
      setState(() {
        _image = imageBytes;
      });
    }
  }

  void registerUser(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const Center(
          child: CircularProgressIndicator(
            color: Color.fromRGBO(255, 183, 77, 1),
          ),
        );
      },
    );
    var regBody = {
      "email": emailController.text,
      "password": passwordController.text,
      "name": usernameController.text,
    };
    String name = usernameController.text;
    String email = emailController.text;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    await prefs.setString('email', email);

    try {
      var response = await http.post(
        Uri.parse(registration),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(regBody),
      );
      print('Response status code: ${response.statusCode}');
      print('Response body: ${response.body}');

      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      String status = jsonResponse['status'];
      String message = jsonResponse['message'];
      if (status == 'PENDING') {
        Navigator.pop(context);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(status),
              content: Text(message),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          VerificationPage(email: emailController.text),
                    ));
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
      } else if (status == 'FAILED') {
        Navigator.pop(context);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Registration Failed"),
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
      } else {
        Navigator.pop(context);
        print('Unexpected response status: $status');
      }
    } catch (e) {
      Navigator.pop(context);
      print("An error occurred during the post request: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Form(
          key: _formKey,
          child: ListView(
            children: [
              Container(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: const Text(
                  "Create your account",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Stack(
                  children: [
                    _image != null
                        ? CircleAvatar(
                            radius: 60,
                            backgroundImage: MemoryImage(_image!),
                          )
                        : CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.grey[300],
                            backgroundImage:
                                const AssetImage("img/profile_icon.png"),
                          ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: IconButton(
                          icon: const Icon(
                            Icons.add_a_photo_outlined,
                            size: 20,
                          ),
                          color: Colors.brown,
                          onPressed: () {
                            selectImage();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
              CustomTextField(
                  validator: (value) {
                    if (value!.isEmpty) return "Usename can't be empty";
                    return null;
                  },
                  controller: usernameController,
                  hinText: "Username",
                  obscureText: false),
              Container(
                height: 10,
              ),
              CustomTextField(
                controller: emailController,
                hinText: "Email",
                obscureText: false,
                validator: (value) {
                  if (value!.isEmpty) return "E-mail can't be empty";
                  if (!value.contains("@")) return "E-mail is Invalid";
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
                validator: (value) {
                  if (value!.isEmpty) return "Password can't be empty";
                  if (value.length < 8) return "Password length must have >=8";
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  controller: aboutUsController,
                  hinText: "How did you find out about us?",
                  obscureText: false),
              const SizedBox(height: 30),
              CustomMaterialButton(
                text: "Sign Up",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    registerUser(context);
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
                    "Already have an account?",
                    style: TextStyle(fontSize: 15),
                  ),
                  MaterialButton(
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minWidth: 2.5,
                    onPressed: () {
                      Navigator.of(context).pushNamed("LoginPage");
                    },
                    child: const Text(
                      "Sign in",
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
