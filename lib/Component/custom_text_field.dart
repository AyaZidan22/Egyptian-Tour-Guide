import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Widget? icon;
  final String label;

  const CustomTextField({
    super.key,
    this.validator,
    required this.controller,
    required this.obscureText,
    this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFF0E3C2)),
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFF0E3C2)),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFFAC738)),
              borderRadius: BorderRadius.circular(15),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
            suffixIcon: icon,
            label: Text(
              label,
              style: const TextStyle(color: Color(0XFFA17D1C), fontSize: 15),
            )),
      ),
    );
  }
}
