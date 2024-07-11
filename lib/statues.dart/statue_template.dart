import 'package:ETG/Component/custom_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStatues extends StatefulWidget {
  const CustomStatues(
      {super.key,
      this.img,
      this.statueName,
      this.text1,
      this.maintext1,
      this.text2,
      this.url});

  final String? img;
  final String? statueName;
  final String? maintext1;
  final String? text1;
  final String? text2;
  final String? url;

  @override
  State<CustomStatues> createState() => CustomStatuesState();
}

class CustomStatuesState extends State<CustomStatues> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;
  bool isExpanded = false;

  Future<void> speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1.0);
    await flutterTts.stop();
    await flutterTts.speak(text);
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.img!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  buildSectionTitleWithButton(widget.statueName!),
                  buildDescriptionText(widget.text2!),
                  if (widget.maintext1 != null) ...[
                    buildSectionTitle(widget.maintext1!),
                    buildDescriptionText(widget.text1!),
                  ],
                  const SizedBox(
                    height: 10,
                  ),
                  buildSectionTitle("Video"),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomYoutubePlayer(videoUrl: widget.url!),
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
              if (widget.maintext1 != null) {
                speak(widget.maintext1!);
                speak(widget.text1!);
              }
              speak(widget.text2!);
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
