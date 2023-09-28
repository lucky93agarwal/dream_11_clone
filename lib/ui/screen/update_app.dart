import 'package:dream_11_clone/ui/widgets/customFlatButton.dart';
import 'package:dream_11_clone/ui/widgets/title_text.dart';
import 'package:dream_11_clone/utils/color.dart';
import 'package:dream_11_clone/utils/utility.dart';
import 'package:flutter/material.dart';


class UpdateAppScreen extends StatefulWidget {
  const UpdateAppScreen({super.key});

  @override
  State<UpdateAppScreen> createState() => _UpdateAppScreenState();
}

class _UpdateAppScreenState extends State<UpdateAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/icon-480.png"),
            const TitleText(
              "New Update is available",
              fontSize: 25,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TitleText(
              "The current version of app is no longer supported. We apologized for any inconvenience we may have caused you",
              fontSize: 14,
              color: Theme.of(context).darkGrey,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 35),
              child: CustomFlatButton(
                label: "Update now",
                onPressed: () => Utility.launchURL(
                    "https://play.google.com/store/apps/details?id=com.thealphamerc.flutter_twitter_clone"),
                borderRadius: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
