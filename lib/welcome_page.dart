import 'package:ETG/authpages/log_in.dart';
import 'package:flutter/material.dart';
import 'package:ETG/Component/responsive_button.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  WelcomePageState createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('img/others/Temple.png'),
                  fit: BoxFit.cover)),
          child: Container(
            margin: const EdgeInsets.only(top: 150, left: 20, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Discover Egypt",
                    style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                      "Visiting Egypt isn't complete without knowing its secrets ",
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 18,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                ResponsiveButton(
                  textColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 115, 71, 0),
                  text: "Get started",
                  isResponsive: true,
                  width: 120,
                  onClick: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
