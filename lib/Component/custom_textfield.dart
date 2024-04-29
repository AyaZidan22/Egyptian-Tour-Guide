import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final controller;
  final String hinText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final icon;
  const CustomTextField(
      {super.key,
      this.validator,
      required this.controller,
      required this.hinText,
      required this.obscureText,
      this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400)),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hinText,
            suffixIcon: icon),
      ),
    );
  }
}
