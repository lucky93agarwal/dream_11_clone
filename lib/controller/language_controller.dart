import 'dart:ui';

import 'package:dream_11_clone/controller/global_controller.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  var isEnglish = "English".obs;
  var check = "en".obs;
  final GlobalController globalController = Get.find<GlobalController>();
  @override
  void onInit() {
    getInitialThemeAndLang();
    super.onInit();
  }

  getInitialThemeAndLang() {
    check(Get.locale.toString() == 'en'?'en': 'hi');
    isEnglish(Get.locale.toString() == "en" ? "English" : "Hindi");
  }

  void updateTheLanguage(String? value, bool isEnglishs) {
    globalController.getStorage.write("isEnglish", isEnglishs);
    isEnglish.value = value.toString();
    Get.updateLocale(Locale((isEnglishs) ? "en" : "ne"));
  }
}