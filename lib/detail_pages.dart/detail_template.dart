import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/Component/colors.dart';

class CustomDetailPage extends StatefulWidget {
  const CustomDetailPage(
      {super.key,
      this.history,
      this.location,
      this.openingHours,
      this.prices,
      this.img,
      this.itemName,
      this.description,
      this.tips});
  final String? img;
  final String? itemName;
  final String? description;
  final String? history;
  final String? location;
  final String? openingHours;
  final String? prices;
  final String? tips;
  @override
  State<CustomDetailPage> createState() => _CustomDetailPageState();
}

class _CustomDetailPageState extends State<CustomDetailPage> {
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
                  color: Colors.grey.shade200,
                ),
                child: IconButton(
                  onPressed: () {
                    if (isSpeaking) {
                      flutterTts.stop();
                    }
                    setState(() {
                      isSpeaking = !isSpeaking;
                    });
                    Navigator.of(context).pop();
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
                              child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 20, bottom: 10, right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                if (widget.itemName != null)
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        widget.itemName!,
                                        style: GoogleFonts.alkatra(
                                            fontSize: 20,
                                            color: AppColors.mainColor),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          if (isSpeaking) {
                                            flutterTts.stop();
                                          } else {
                                            speak(widget.description!);
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
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 20),
                                  child: Text(
                                    "Description",
                                    style: GoogleFonts.alkatra(
                                        fontSize: 15,
                                        color: AppColors.mainColor),
                                  ),
                                ),
                                Text(
                                  widget.description!,
                                  style: const TextStyle(fontSize: 15),
                                ),
                                if (widget.location != null)
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, top: 20),
                                    child: Text(
                                      "Location",
                                      style: GoogleFonts.alkatra(
                                          fontSize: 15,
                                          color: AppColors.mainColor),
                                    ),
                                  ),
                                if (widget.location != null)
                                  Text(
                                    widget.location!,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                if (widget.openingHours != null)
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, top: 20),
                                    child: Text(
                                      "Opening Hours",
                                      style: GoogleFonts.alkatra(
                                          fontSize: 15,
                                          color: AppColors.mainColor),
                                    ),
                                  ),
                                if (widget.openingHours != null)
                                  Text(
                                    widget.openingHours!,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                if (widget.prices != null)
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, top: 20),
                                    child: Text(
                                      "Cost",
                                      style: GoogleFonts.alkatra(
                                          fontSize: 15,
                                          color: AppColors.mainColor),
                                    ),
                                  ),
                                if (widget.prices != null)
                                  Text(
                                    widget.prices!,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                if (widget.tips != null)
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, top: 20),
                                    child: Text(
                                      "Visitor Tips",
                                      style: GoogleFonts.alkatra(
                                          fontSize: 15,
                                          color: AppColors.mainColor),
                                    ),
                                  ),
                                if (widget.tips != null)
                                  Text(
                                    widget.tips!,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                              ],
                            ),
                          ))));
                }),
              ))
        ],
      ),
    ));
  }
}
