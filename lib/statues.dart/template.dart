import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/Component/colors.dart';
import 'package:travelapp/navpages/main_page.dart';

class CustomStatues extends StatefulWidget {
  const CustomStatues(
      {super.key,
      this.img,
      this.statueName,
      this.text1,
      this.maintext1,
      this.maintext2,
      this.text2});
  final String? img;
  final String? statueName;
  final String? maintext1;
  final String? text1;
  final String? maintext2;
  final String? text2;
  @override
  State<CustomStatues> createState() => _CustomStatuesState();
}

class _CustomStatuesState extends State<CustomStatues> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US'); // Set language (optional)
    await flutterTts.setPitch(1.0); // Set pitch (optional)
    await flutterTts.stop(); // Stop any ongoing speech
    await flutterTts.speak(text); // Convert text to speech
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.img!), fit: BoxFit.cover),
                ),
              )),
          Positioned(
              left: 20,
              top: 30,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                child: IconButton(
                  onPressed: () {
                    if (isSpeaking) {
                      flutterTts.stop();
                    }
                    setState(() {
                      isSpeaking = !isSpeaking;
                    });
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MainPage()),
                    );
                  },
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 15,
                  color: AppColors.mainColor,
                ),
              )),
          Positioned(
              top: 310,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return SingleChildScrollView(
                        child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constraints.maxHeight,
                            ),
                            child: IntrinsicHeight(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        left: 20,
                                        bottom: 10,
                                        right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(widget.statueName!,
                                            style: GoogleFonts.alkatra(
                                                fontSize: 20,
                                                color: AppColors.mainColor)),
                                        IconButton(
                                          onPressed: () {
                                            if (isSpeaking) {
                                              flutterTts.stop();
                                            } else {
                                              speak(widget.maintext1!);
                                              speak(widget.text1!);
                                              speak(widget.maintext2!);
                                              speak(widget.text2!);
                                            }
                                            setState(() {
                                              isSpeaking = !isSpeaking;
                                            });
                                          },
                                          icon: Icon(
                                            isSpeaking
                                                ? Icons.pause_circle_filled
                                                : Icons.play_circle_fill,
                                            size: 30,
                                            color: AppColors.mainColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 20, bottom: 10),
                                    child: Text(widget.maintext2!,
                                        style: GoogleFonts.alkatra(
                                            fontSize: 15,
                                            color: AppColors.mainColor)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, bottom: 20),
                                    child: Text(widget.text2!,
                                        style: const TextStyle(fontSize: 15)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 20, bottom: 10),
                                    child: Text(widget.maintext1!,
                                        style: GoogleFonts.alkatra(
                                            fontSize: 15,
                                            color: AppColors.mainColor)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Text(widget.text1!,
                                        style: const TextStyle(fontSize: 15)),
                                  ),
                                ],
                              ),
                            )));
                  })))
        ],
      ),
    ));
  }
}
