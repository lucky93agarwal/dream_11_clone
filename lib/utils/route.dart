import 'package:dream_11_clone/ui/screen/language.dart';
import 'package:dream_11_clone/ui/screen/splash.dart';
import 'package:dream_11_clone/ui/screen/update_app.dart';
import 'package:dream_11_clone/ui/screen/welcome.dart';
import 'package:dream_11_clone/utils/route_path.dart';
import 'package:get/get.dart';

// Import the GetX

class ScreenRouter {
  static List<GetPage> routes = [
    //*----------------------- Unauthorized ---------------------------------
    GetPage(
        name: RoutePath.splash, page: () =>const SplashScreen()),

    GetPage(
        name: RoutePath.updateApp, page: () =>const UpdateAppScreen()),

    GetPage(
        name: RoutePath.welcome, page: () =>const WelcomeScreen()),


    GetPage(
        name: RoutePath.language, page: () =>const LanguageScreen()),

  ];

}