import 'package:dream_11_clone/controller/global_controller.dart';
import 'package:dream_11_clone/controller/language_controller.dart';
import 'package:dream_11_clone/controller/welcome_controller.dart';
import 'package:dream_11_clone/ui/widgets/customCheckBoxButton.dart';
import 'package:dream_11_clone/ui/widgets/customFlatButton.dart';
import 'package:dream_11_clone/ui/widgets/vertical_and_horizontal_gap.dart';
import 'package:dream_11_clone/utils/app_text.dart';
import 'package:dream_11_clone/utils/color.dart';
import 'package:dream_11_clone/utils/font_utils.dart';
import 'package:dream_11_clone/utils/images.dart';
import 'package:dream_11_clone/utils/route_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends GetView<LanguageController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).bgLightColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: myCustomDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpacing(80),
            Image.asset(AppImages.appSmallIcon,height: 50,),
            verticalSpacing(20),
            Text(
              AppText.selectLanguage.tr,
              style: FontUtilities.h26(
                  fontColor: Colors.white, fontWeight: FWT.semiBold),
            ),
            verticalSpacing(20),
            Text(
              AppText.languageDetails.tr,
              textAlign: TextAlign.center,
              style: FontUtilities.h13(
                  fontColor: Colors.white, fontWeight: FWT.medium),
            ),
            verticalSpacing(50),
            CustomCheckBoxButton(
                label: AppText.english.tr,
                check: controller.check.value == 'en' ? true : false,
                onPressed: () => {
                      controller.check.value = 'en',
                      controller.updateTheLanguage(AppText.englishTwo, true)
                    }),
            verticalSpacing(20),
            CustomCheckBoxButton(
                label: AppText.hindi.tr,
                check: controller.check.value == 'hi' ? true : false,
                onPressed: () => {
                      controller.check.value = 'hi',
                      controller.updateTheLanguage(AppText.hindiTwo, false)
                    }),
            const Spacer(),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 35),
              child: CustomFlatButton(
                label: AppText.continuess.tr,
                onPressed: () => {
                  Get.lazyPut(() => WelcomeController()),
                  Get.toNamed(RoutePath.welcome)
                },
                borderRadius: 30,
              ),
            ),
            verticalSpacing(20),
          ],
        ),
      ),
    );
  }
}
