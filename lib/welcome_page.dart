import 'package:flutter/material.dart';
import 'package:travelapp/Component/app_text.dart';
import 'package:travelapp/Component/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  __WelcomePageState createState() => __WelcomePageState();
}

class __WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(scrollDirection: Axis.vertical, children: [
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('img/Temple.png'), fit: BoxFit.cover)),
          child: Container(
            margin: const EdgeInsets.only(top: 150, left: 20, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppText(
                        text: "Discover Egypt", size: 25, color: Colors.white),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 250,
                      child: AppText(
                        text:
                            "Visiting Egypt isn't complete without knowing its secrets ",
                        color: Colors.white,
                        size: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ResponsiveButton(
                      textColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 115, 71, 0),
                      text: "Get started",
                      isResponsive: true,
                      width: 120,
                      onClick: () {
                        Navigator.of(context).pushNamed("LoginPage");
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
