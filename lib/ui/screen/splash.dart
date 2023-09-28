import 'package:dream_11_clone/controller/splash_controller.dart';
import 'package:dream_11_clone/ui/widgets/title_text.dart';
import 'package:dream_11_clone/utils/color.dart';
import 'package:dream_11_clone/utils/font_utils.dart';
import 'package:dream_11_clone/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).bgLightColor,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 36),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.appIcon),
              Text(
                controller.data.value,
                textAlign: TextAlign.center,
                style: FontUtilities.h14(
                    fontColor: Colors.white, fontWeight: FWT.semiBold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
