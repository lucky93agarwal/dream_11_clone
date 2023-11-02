import 'package:dream_11_clone/ui/widgets/customFlatButton.dart';
import 'package:dream_11_clone/ui/widgets/vertical_and_horizontal_gap.dart';
import 'package:dream_11_clone/utils/app_text.dart';
import 'package:dream_11_clone/utils/color.dart';
import 'package:dream_11_clone/utils/font_utils.dart';
import 'package:dream_11_clone/utils/images.dart';
import 'package:dream_11_clone/utils/route_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/welcome_controller.dart';



class WelcomeScreen extends GetView<WelcomeController>{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).bgLightColor,
      body: Container(
        width: Get.width,
        decoration: myCustomDecoration,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpacing(80),
            Image.asset(AppImages.appSmallIcon,height: 50,),
            verticalSpacing(20),
            const Spacer(),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 35),
              child: CustomFlatButton(
                label: AppText.register.tr,
                onPressed: () => {
                  Get.lazyPut(() => WelcomeController()),
                  Get.toNamed(RoutePath.welcome)
                },
                borderRadius: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppText.invitedByAFriend.tr,
                      textAlign: TextAlign.center,
                      style: FontUtilities.h11(
                          fontColor: Colors.white, fontWeight: FWT.medium),
                    ),
                    Text(
                      AppText.enterCode.tr,
                      textAlign: TextAlign.center,
                      style: FontUtilities.h12(
                          fontColor: Colors.white, fontWeight: FWT.black),
                    ),
                ],),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      AppText.alreadyAUser.tr,
                      textAlign: TextAlign.center,
                      style: FontUtilities.h11(
                          fontColor: Colors.white, fontWeight: FWT.medium),
                    ),
                    Text(
                      AppText.logIn.tr,
                      textAlign: TextAlign.center,
                      style: FontUtilities.h12(
                          fontColor: Colors.white, fontWeight: FWT.black),
                    ),
                  ],)

            ],),
            verticalSpacing(30),
        ],),

      ),
    );
  }
}