import 'package:dream_11_clone/utils/font_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomCheckBoxButton extends StatelessWidget {
  const CustomCheckBoxButton({super.key,
    required this.onPressed,
    required this.label,
  required this.check});
  final VoidCallback? onPressed;
  final String label;
  final bool check;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 55,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color:check? const Color(0xff4b090d): const Color(0xff230505),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: const Color(0xff781e29),width: 2)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(label,
            textAlign: TextAlign.center,
            style: FontUtilities.h15(
        fontColor: Colors.white, fontWeight: FWT.medium),),

            Container(
              width: 18,
              height: 18,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white,width: 2)
              ),
              child: Visibility(
                visible: check?true:false,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                    color: Colors.white
                  ),
                ),
              ),
            )

        ],),
      ),
    );
  }
}
