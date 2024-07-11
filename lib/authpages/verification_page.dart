import 'package:ETG/Component/custom_material_button.dart';
import 'package:ETG/authpages/log_in.dart';
import 'package:ETG/business_logic/cubit/verification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPage extends StatelessWidget {
  final String email;
  const VerificationPage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => VerificationCubit(),
      child: VerificationForm(email: email),
    );
  }
}

class VerificationForm extends StatefulWidget {
  final String email;
  const VerificationForm({super.key, required this.email});

  @override
  State<VerificationForm> createState() => VerificationFormState();
}

class VerificationFormState extends State<VerificationForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<VerificationCubit, VerificationState>(
        listener: (context, state) {
          if (state is VerificationSuccess) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          } else if (state is VerificationFailed) {
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
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
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
                          style: GoogleFonts.plusJakartaSans(fontSize: 16),
                        ),
                        const SizedBox(height: 20),
                        PinCodeTextField(
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
                        ),
                        const SizedBox(height: 20),
                        CustomMaterialButton(
                          text: 'Verify',
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.read<VerificationCubit>().verifyEmail(
                                  widget.email, otpController.text);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (state is VerificationLoading)
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
