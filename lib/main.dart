import 'package:ETG/Top_Activities/climbing_mount_sina.dart';
import 'package:ETG/Top_Activities/hot_ballon.dart';
import 'package:ETG/Top_Activities/light_shows.dart';
import 'package:ETG/Top_Activities/nile_cruises.dart';
import 'package:ETG/Top_Activities/star_watching.dart';
import 'package:ETG/Top_Activities/water_sports.dart';
import 'package:ETG/authpages/log_in.dart';
import 'package:ETG/authpages/register_page.dart';
import 'package:ETG/business_logic/cubit/face_swap_cubit.dart';
import 'package:ETG/business_logic/cubit/log_out_cubit.dart';
import 'package:ETG/business_logic/cubit/login_cubit_cubit.dart';
import 'package:ETG/business_logic/cubit/reset_password_request_cubit.dart';
import 'package:ETG/business_logic/cubit/detection_cubit.dart';
import 'package:ETG/categories_pages.dart/ancient_egypt.dart';
import 'package:ETG/categories_pages.dart/beaches.dart';
import 'package:ETG/categories_pages.dart/mountains.dart';
import 'package:ETG/categories_pages.dart/museums.dart';
import 'package:ETG/categories_pages.dart/oases.dart';
import 'package:ETG/navpages/home_page.dart';
import 'package:ETG/navpages/main_page.dart';
import 'package:ETG/provider/favouraite_provider.dart';
import 'package:ETG/statues.dart/khafre.dart';
import 'package:ETG/statues.dart/ramsis_ii.dart';
import 'package:ETG/statues.dart/tut.dart';
import 'package:ETG/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString('token');
  runApp(MyApp(token: token));
}

class MyApp extends StatelessWidget {
  final String? token;
  const MyApp({super.key, required this.token});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ResetPasswordRequestCubit>(
              create: (context) => ResetPasswordRequestCubit()),
          BlocProvider<LoginCubit>(create: (context) => LoginCubit()),
          BlocProvider<DetectionCubit>(create: (context) => DetectionCubit()),
          BlocProvider<FaceSwapCubit>(create: (context) => FaceSwapCubit()),
          BlocProvider<LogOutCubit>(create: (context) => LogOutCubit()),
        ],
        child: ChangeNotifierProvider(
          create: (context) => FavouriteProvider(),
          child: MaterialApp(
            theme: ThemeData(
              scaffoldBackgroundColor: const Color(0xFFFAF7F0),
            ),
            debugShowCheckedModeBanner: false,
            home: (token != null) ? const MainPage() : const WelcomePage(),
            routes: {
              "LoginPage": (context) => const LoginPage(),
              "RegisterPage": (context) => const RegisterPage(),
              "HomePage": (context) => const HomePage(),
              "MainPage": (context) => const MainPage(),
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
              "climbingmountains": (context) => const ClimbingMountain(),
            },
          ),
        ));
  }
}
