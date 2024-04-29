import 'package:flutter/material.dart';
import 'package:travelapp/Component/colors.dart';
import 'package:travelapp/navpages/favourite_page.dart';
import 'package:travelapp/navpages/home_page.dart';
import 'package:travelapp/navpages/profilepage.dart/my_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  __MainPageState createState() => __MainPageState();
}

class __MainPageState extends State<MainPage> {
  List pages = [const HomePage(), const FavouritePage(), const ProfilePage()];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey.shade300,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: Colors.brown[200],
          showUnselectedLabels: false,
          showSelectedLabels: true,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
                label: "*",
                icon: Icon(
                  Icons.home,
                  size: 32,
                )),
            BottomNavigationBarItem(
                label: "*",
                icon: Icon(
                  Icons.favorite,
                  size: 25,
                )),
            BottomNavigationBarItem(
                label: "*",
                icon: Icon(
                  Icons.person,
                  size: 30,
                )),
          ]),
    );
  }
}
