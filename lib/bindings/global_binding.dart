import 'package:dream_11_clone/controller/splash_controller.dart';
import 'package:get/get.dart';

class GlobalBinding implements Bindings {
// default dependency
  @override
  void dependencies() {

   Get.lazyPut(() => SplashController());
  }
}