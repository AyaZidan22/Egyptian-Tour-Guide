import 'package:ETG/Component/custom_material_button.dart';
import 'package:ETG/Component/custom_text_field.dart';
import 'package:ETG/authpages/password_reset.dart';
import 'package:ETG/business_logic/cubit/login_cubit_cubit.dart';
import 'package:ETG/business_logic/cubit/login_cubit_state.dart';
import 'package:ETG/business_logic/cubit/reset_password_request_cubit.dart';
import 'package:ETG/navpages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool vis = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<ResetPasswordRequestCubit, ResetPasswordRequestState>(
        listener: (context, state) {
          if (state is ResetPasswordRequestPending) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PasswordReset(
                        email: emailController.text,
                      )),
            );
          } else if (state is ResetPasswordRequestFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MainPage()),
              );
            } else if (state is LoginFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
            }
          },
          builder: (context, loginState) {
            return BlocBuilder<ResetPasswordRequestCubit,
                ResetPasswordRequestState>(
              builder: (context, resetState) {
                return Stack(
                  children: [
                    Form(
                        key: formKey,
                        child: ListView(
                          children: [
                            const SizedBox(height: 50),
                            Image.asset(
                              'img/others/EyeOfRa.png',
                              height: 150,
                            ),
                            const SizedBox(height: 20),
                            Container(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Welcome Back",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF211A0A),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                              controller: emailController,
                              obscureText: false,
                              validator: (email) {
                                if (email!.isEmpty) {
                                  return "Email can't be empty";
                                }
                                if (!email.contains("@")) {
                                  return "Email is Invalid";
                                }
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
                                  vis ? Icons.visibility_off : Icons.visibility,
                                  color: const Color(0XFFA17D1C),
                                ),
                                onPressed: () {
                                  setState(() {
                                    vis = !vis;
                                  });
                                },
                              ),
                              controller: passwordController,
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
                              label: 'Password',
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        context
                                            .read<ResetPasswordRequestCubit>()
                                            .resetPasswordRequest(
                                                emailController.text);
                                      }
                                    },
                                    child: Text(
                                      "Forgot Password?",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 13,
                                        color: const Color(0XFFA17D1C),
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            const Color(0XFFA17D1C),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                            CustomMaterialButton(
                              text: "Sign In",
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<LoginCubit>().login(
                                      emailController.text,
                                      passwordController.text);
                                }
                              },
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Not a member?",
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 13,
                                    color: const Color(0XFFA17D1C),
                                  ),
                                ),
                                MaterialButton(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  minWidth: 2.5,
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed("RegisterPage");
                                  },
                                  child: Text(
                                    "Sign up",
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0XFFA17D1C),
                                      decoration: TextDecoration.underline,
                                      decorationColor: const Color(0XFFA17D1C),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    if (loginState is LoginLoading ||
                        resetState is ResetPasswordRequestLoading)
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
            );
          },
        ),
      ),
    );
  }
}
