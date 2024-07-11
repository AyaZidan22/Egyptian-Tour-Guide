import 'package:ETG/navpages/games/games_temp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ETG/navpages/favourite_page.dart';
import 'package:ETG/navpages/home_page.dart';
import 'package:ETG/navpages/my_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  List<Widget> pages = [
    const HomePage(),
    const FavouritePage(),
    const GamesTemp(),
    const ProfilePage()
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: pages[currentIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFAF7F0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          unselectedFontSize: 12,
          selectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFFFAF7F0),
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: const Color(0XFFA17D1C),
          unselectedItemColor: const Color(0xFFA17D1C).withOpacity(0.5),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          elevation: 10,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: currentIndex == 0
                      ? const Color(0XFFA17D1C)
                      : const Color(0xFFA17D1C).withOpacity(0.5),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Favorites",
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.favorite,
                  size: 30,
                  color: currentIndex == 1
                      ? const Color(0XFFA17D1C)
                      : const Color(0xFFA17D1C).withOpacity(0.5),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Games",
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.sports_esports,
                  size: 30,
                  color: currentIndex == 2
                      ? const Color(0XFFA17D1C)
                      : const Color(0xFFA17D1C).withOpacity(0.5),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: currentIndex == 3
                      ? const Color(0XFFA17D1C)
                      : const Color(0xFFA17D1C).withOpacity(0.4),
                ),
              ),
            ),
          ],
          selectedLabelStyle: GoogleFonts.plusJakartaSans(
            color: const Color(0XFFA17D1C),
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
          unselectedLabelStyle: GoogleFonts.plusJakartaSans(
            color: const Color(0xFFA17D1C).withOpacity(0.5),
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
