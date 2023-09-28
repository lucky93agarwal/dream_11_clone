import 'package:dream_11_clone/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class SplashScreen extends GetView<SplashController>{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(controller.data.value),),
    );
  }
}
