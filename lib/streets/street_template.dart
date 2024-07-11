import 'package:ETG/Component/custom_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStreets extends StatefulWidget {
  const CustomStreets(
      {super.key, this.img, this.maintext, this.url, this.streetName});

  final String? img;
  final String? maintext;
  final String? url;
  final String? streetName;

  @override
  State<CustomStreets> createState() => CustomStreetsState();
}

class CustomStreetsState extends State<CustomStreets> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;
  bool isExpanded = false;

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(text);
    setState(() {
      isSpeaking = true;
    });
    flutterTts.setCompletionHandler(() {
      setState(() {
        isSpeaking = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 250,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.img!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xFFFAF7F0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildSectionTitleWithButton(widget.streetName!),
                  buildDescriptionText(widget.maintext!),
                  if (widget.url != null) ...[
                    const SizedBox(
                      height: 10,
                    ),
                    buildSectionTitle("Video"),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomYoutubePlayer(videoUrl: widget.url!),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitleWithButton(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10, top: 20),
          child: Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: const Color(0XFFA17D1C),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            if (isSpeaking) {
              flutterTts.stop();
            } else {
              speak(widget.maintext!);
            }
            setState(() {
              isSpeaking = !isSpeaking;
            });
          },
          icon: Icon(
            isSpeaking ? Icons.pause_circle_filled : Icons.play_circle_fill,
            size: 35,
            color: const Color(0XFFA17D1C),
          ),
        ),
      ],
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 20),
      child: Text(
        title,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: const Color(0XFFA17D1C),
        ),
      ),
    );
  }

  Widget buildDescriptionText(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isExpanded ? text : '${text.substring(0, 300)}...',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? 'Show less' : 'Show more',
            style: const TextStyle(
              color: Color(0XFFA17D1C),
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
