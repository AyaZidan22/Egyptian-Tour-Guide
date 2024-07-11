import 'package:ETG/Component/custom_material_button.dart';
import 'package:ETG/Component/custom_text_field.dart';
import 'package:ETG/authpages/log_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../business_logic/cubit/password_reset_cubit.dart';

class PasswordReset extends StatelessWidget {
  final String email;
  const PasswordReset({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordResetCubit(),
      child: PasswordResetForm(email: email),
    );
  }
}

class PasswordResetForm extends StatefulWidget {
  final String email;
  const PasswordResetForm({super.key, required this.email});

  @override
  State<PasswordResetForm> createState() => PasswordResetFormState();
}

class PasswordResetFormState extends State<PasswordResetForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final otpController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmNewPasswordController = TextEditingController();
  bool vis1 = true;
  bool vis2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<PasswordResetCubit, PasswordResetState>(
        listener: (context, state) {
          if (state is PasswordResetSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          } else if (state is PasswordResetFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Image.asset(
                        'img/others/EyeOfRa.png',
                        height: 150,
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'Enter the OTP sent to your email',
                        style: GoogleFonts.plusJakartaSans(fontSize: 15),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: PinCodeTextField(
                          appContext: context,
                          length: 4,
                          controller: otpController,
                          keyboardType: TextInputType.number,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: 50,
                            fieldWidth: 60,
                            activeFillColor: Colors.white,
                            selectedFillColor: Colors.white,
                            inactiveFillColor: Colors.white,
                            activeColor: const Color(0xFFF0E3C2),
                            selectedColor: const Color(0xFFFAC738),
                            inactiveColor: const Color(0xFFF0E3C2),
                          ),
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'OTP is required';
                            }
                            if (value.length != 4) {
                              return 'OTP must be 4 digits';
                            }
                            return null;
                          },
                        ),
                      ),
                      CustomTextField(
                        icon: IconButton(
                          icon: Icon(
                            (vis1 ? Icons.visibility_off : Icons.visibility),
                            color: const Color(0XFFA17D1C),
                          ),
                          onPressed: () {
                            setState(() {
                              vis1 = !vis1;
                            });
                          },
                        ),
                        controller: newPasswordController,
                        obscureText: vis1,
                        validator: (password) {
                          if (password!.isEmpty) {
                            return "Password can't be empty";
                          }
                          if (password.length < 8) {
                            return "Password length must be >=8";
                          }
                          return null;
                        },
                        label: 'New Password',
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        icon: IconButton(
                          icon: Icon(
                            (vis2 ? Icons.visibility_off : Icons.visibility),
                            color: const Color(0XFFA17D1C),
                          ),
                          onPressed: () {
                            setState(() {
                              vis2 = !vis2;
                            });
                          },
                        ),
                        controller: confirmNewPasswordController,
                        obscureText: vis2,
                        validator: (password) {
                          if (password!.isEmpty) {
                            return "Password can't be empty";
                          }
                          if (password.length < 8) {
                            return "Password length must be >=8";
                          }
                          if (password != newPasswordController.text) {
                            return "Passwords do not match";
                          }
                          return null;
                        },
                        label: 'Confirm New Password',
                      ),
                      const SizedBox(height: 20),
                      CustomMaterialButton(
                        text: "Update",
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            context.read<PasswordResetCubit>().resetPassword(
                                  widget.email,
                                  otpController.text,
                                  confirmNewPasswordController.text,
                                );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              if (state is PasswordResetLoading)
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
