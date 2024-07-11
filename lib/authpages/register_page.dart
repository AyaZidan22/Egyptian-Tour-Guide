// ignore_for_file: use_build_context_synchronously
import 'package:ETG/Component/custom_material_button.dart';
import 'package:ETG/Component/custom_text_field.dart';
import 'package:ETG/Component/select_image.dart';
import 'package:ETG/authpages/log_in.dart';
import 'package:ETG/authpages/verification_page.dart';
import 'package:ETG/business_logic/cubit/register_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => RegisterCubit(),
      child: const RegisterPageForm(),
    );
  }
}

class RegisterPageForm extends StatefulWidget {
  const RegisterPageForm({super.key});

  @override
  State<RegisterPageForm> createState() => RegisterPageFormState();
}

class RegisterPageFormState extends State<RegisterPageForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state is RegisterPending) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      VerificationPage(email: emailController.text)),
            );
          } else if (state is RegisterFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              Form(
                key: formKey,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 60,
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
                                      const AssetImage("img/others/user.png"),
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
                                color: const Color(0XFFA17D1C),
                                onPressed: () {
                                  selectImage();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Create your account",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF211A0A)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      validator: (value) {
                        if (value!.isEmpty) return "Username can't be empty";
                        return null;
                      },
                      controller: usernameController,
                      obscureText: false,
                      label: 'Username',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      controller: emailController,
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty) return "E-mail can't be empty";
                        if (!value.contains("@")) return "E-mail is Invalid";
                        return null;
                      },
                      label: 'Email',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      icon: IconButton(
                          icon: Icon(
                              (vis ? Icons.visibility_off : Icons.visibility),
                              color: const Color(0XFFA17D1C)),
                          onPressed: () {
                            setState(() {
                              vis = !vis;
                            });
                          }),
                      controller: passwordController,
                      obscureText: vis,
                      validator: (value) {
                        if (value!.isEmpty) return "Password can't be empty";
                        if (value.length < 8) {
                          return "Password length must have >=8";
                        }
                        return null;
                      },
                      label: 'Password',
                    ),
                    const SizedBox(height: 50),
                    CustomMaterialButton(
                      text: "Sign Up",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.read<RegisterCubit>().registerUser(
                              emailController.text,
                              passwordController.text,
                              usernameController.text);
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 13, color: const Color(0XFFA17D1C)),
                        ),
                        MaterialButton(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          minWidth: 2.5,
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                          },
                          child: Text(
                            "Sign in",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: const Color(0XFFA17D1C),
                              decoration: TextDecoration.underline,
                              decorationColor: const Color(0XFFA17D1C),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              if (state is RegisterLoading)
                Container(
                  color: Colors.black.withOpacity(0.5),
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: Color(0XFFA17D1C),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
