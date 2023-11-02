import 'package:dream_11_clone/bindings/global_binding.dart';
import 'package:dream_11_clone/controller/global_controller.dart';
import 'package:dream_11_clone/utils/color.dart';
import 'package:dream_11_clone/utils/localString/local_string.dart';
import 'package:dream_11_clone/utils/route.dart';
import 'package:dream_11_clone/utils/route_path.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  bool? isEnglish;
  GlobalController g = Get.put(GlobalController());
  isEnglish = g.getStorage.read('isEnglish');
  runApp(MyApp(
    isEnglish: isEnglish ?? true,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,required this.isEnglish});
  final bool isEnglish;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialBinding: GlobalBinding(),
      theme: ThemeData(
        backgroundColor: Theme.of(context).bgLightColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      translations: LocalString(),
      fallbackLocale: const Locale("en"),
      locale: (isEnglish) ? const Locale("en") : const Locale("ne"),
      initialRoute: RoutePath.splash,
      getPages: ScreenRouter.routes,
    );
  }
}
