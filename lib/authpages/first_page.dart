import 'package:flutter/material.dart';
import 'package:travelapp/Component/custom_materialbutton.dart';
import 'package:travelapp/Component/google_api.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Future googleSignIn() async {
    await GoogleSignInApi.login();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView(
          children: [
            Container(
              height: 50,
            ),
            const Image(
              image: AssetImage("img/df.png"),
              height: 120,
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, left: 35),
              child: const Text(
                "Egyptian Tourist Guide",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 40),
              child: const Text(
                "Let's Enhance Your Cultural Experience",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            Container(height: 120),
            CustomMaterialButton(
              text: "Sign up with email",
              onPressed: () {
                Navigator.of(context).pushNamed("RegisterPage");
              },
              backgroundColor: const Color.fromRGBO(255, 183, 77, 1),
              imagePath: "img/mail.png",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomMaterialButton(
              text: "Sign up with Google",
              onPressed: () {
                googleSignIn();
              },
              backgroundColor: const Color.fromRGBO(255, 183, 77, 1),
              imagePath: "img/google.png",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomMaterialButton(
              text: "Sign up with Apple",
              onPressed: () {},
              imagePath: "img/apple_icon.png",
              backgroundColor: const Color.fromRGBO(255, 183, 77, 1),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 15),
                ),
                MaterialButton(
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minWidth: 2.5,
                  onPressed: () {
                    Navigator.of(context).pushNamed("LoginPage");
                  },
                  child: const Text(
                    "Sign in",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
