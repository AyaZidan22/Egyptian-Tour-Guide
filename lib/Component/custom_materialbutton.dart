import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.backgroundColor,
      this.imagePath})
      : super(key: key);

  final String text;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: MaterialButton(
          onPressed: onPressed,
          color: backgroundColor,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (imagePath != null)
                  Image.asset(
                    imagePath!,
                    height: 25,
                    width: 30,
                  ),
                const SizedBox(width: 10),
                Text(
                  text,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          )),
    );
  }
}
