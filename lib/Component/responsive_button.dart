import 'package:fancy_button_flutter/fancy_button_flutter.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  final bool isResponsive;
  final double? width;
  final VoidCallback onClick;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  const ResponsiveButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      this.width,
      required this.isResponsive,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FancyButton(
              button_text: text,
              button_height: 40,
              button_width: 110,
              button_radius: 30,
              button_color: backgroundColor,
              button_outline_color: const Color.fromARGB(255, 224, 224, 224),
              button_outline_width: 1,
              button_text_color: textColor,
              button_icon_color: Colors.white,
              icon_size: 36,
              button_text_size: 15,
              onClick: onClick),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
