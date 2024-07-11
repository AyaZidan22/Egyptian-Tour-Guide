import 'package:ETG/Component/custom_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';
import '../Component/flutter_map.dart';

class CustomDetailPage extends StatefulWidget {
  const CustomDetailPage({
    super.key,
    this.location,
    this.openingHours,
    this.prices,
    this.img,
    this.itemName,
    this.description,
    this.tips,
    this.latitude,
    this.longitude,
    this.url,
  });

  final String? img;
  final String? itemName;
  final String? description;
  final String? location;
  final String? openingHours;
  final String? prices;
  final String? tips;
  final double? latitude;
  final double? longitude;
  final String? url;

  @override
  State<CustomDetailPage> createState() => _CustomDetailPageState();
}

class _CustomDetailPageState extends State<CustomDetailPage> {
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
            if (widget.img != null)
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
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 20),
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
                  if (widget.itemName != null)
                    buildSectionTitleWithButton(widget.itemName!),
                  if (widget.description != null)
                    buildDescriptionText(widget.description!),
                  if (widget.location != null) ...[
                    buildSectionTitle("Location"),
                    buildInfoText(widget.location!),
                  ],
                  if (widget.latitude != null && widget.longitude != null) ...[
                    buildSectionTitle("Map"),
                    buildMap(),
                  ],
                  if (widget.openingHours != null) ...[
                    buildSectionTitle("Opening Hours"),
                    buildInfoText(widget.openingHours!),
                  ],
                  if (widget.prices != null) ...[
                    buildSectionTitle("Cost"),
                    buildInfoText(widget.prices!),
                  ],
                  if (widget.tips != null) ...[
                    buildSectionTitle("Visitor Tips"),
                    buildInfoText(widget.tips!),
                  ],
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
              speak(widget.description!);
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
          isExpanded ? text : '${text.substring(0, 100)}...',
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

  Widget buildMap() {
    return SizedBox(
      height: 300,
      child: MapPage(
        location: LatLng(widget.latitude!, widget.longitude!),
      ),
    );
  }

  Widget buildInfoText(String text) {
    return Text(
      text,
      style: GoogleFonts.plusJakartaSans(fontSize: 16),
    );
  }
}
