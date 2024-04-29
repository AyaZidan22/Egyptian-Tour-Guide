import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelapp/Top_Activities/hot_ballon.dart';
import 'package:travelapp/Top_Activities/light_shows.dart';
import 'package:travelapp/Top_Activities/nile_cruises.dart';
import 'package:travelapp/Top_Activities/star_watching.dart';
import 'package:travelapp/Top_Activities/water_sports.dart';
import 'package:travelapp/authpages/Login.dart';
import 'package:travelapp/authpages/RegisterPage.dart';
import 'package:travelapp/authpages/first_page.dart';
import 'package:travelapp/authpages/passwordReset.dart';
import 'package:travelapp/categories_pages.dart/ancient_egypt.dart';
import 'package:travelapp/categories_pages.dart/beaches.dart';
import 'package:travelapp/categories_pages.dart/mountains.dart';
import 'package:travelapp/categories_pages.dart/museums.dart';
import 'package:travelapp/categories_pages.dart/oases.dart';
import 'package:travelapp/navpages/home_page.dart';
import 'package:travelapp/navpages/main_page.dart';
import 'package:travelapp/provider/favouraite_provider.dart';
import 'package:travelapp/statues.dart/khafre.dart';
import 'package:travelapp/statues.dart/ramsis_II.dart';
import 'package:travelapp/statues.dart/tut.dart';
import 'package:travelapp/trip_plan.dart';
import 'package:travelapp/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? token = prefs.getString('token');
  final String? userId = prefs.getString("userId");
  print("token: $token");
  print("userId:$userId");
  runApp(MyApp(
    token: token,
    userId: userId,
  ));
}

class MyApp extends StatelessWidget {
  final String? token;
  final String? userId;

  const MyApp({required this.userId, required this.token, super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavouriteProvider(userId!),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: (token != null && !JwtDecoder.isExpired(token!))
            ? const MainPage()
            : const WelcomePage(),
        routes: {
          "LoginPage": (context) => const LoginPage(),
          "RegisterPage": (context) => const RegisterPage(),
          "passwordReset": (context) => const PasswordReset(),
          "tripPlan": (context) => const TripPlan(),
          "firstPage": (context) => const FirstPage(),
          "HomePage": (context) => const HomePage(),
          "MainPage":(context)=>const MainPage(),
          "AncientEgypt": (context) => const AncientEgypt(),
          "Mountains": (context) => const Mountains(),
          "Beaches": (context) => const Beaches(),
          "Oases": (context) => const Oases(),
          "Museums": (context) => const Museums(),
          "ramsisPage": (context) => const RamsisPage(),
          "tutPage": (context) => const TutPage(),
          "khafrePage": (context) => const KhafrePage(),
          "mainPage": (context) => const MainPage(),
          "welcomPage": (context) => const WelcomePage(),
          "starWatching": (context) => const StarWatching(),
          "waterSports": (context) => const WaterSports(),
          "hotBallon": (context) => const HotBallon(),
          "lightShows": (context) => const LightShows(),
          "nileCruises": (context) => const NileCruises(),
        },
      ),
    );
  }
}
