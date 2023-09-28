import 'dart:convert';

import 'package:dream_11_clone/utils/utility.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SplashController extends GetxController {

  RxString data = "".obs;
  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
    data.value = "App is updated = 1234";
    WidgetsBinding.instance.addPostFrameCallback((_) {
      timer();
    });
  }

  /// Check if current app is updated app or not
  /// If app is not updated then redirect user to update app screen
  void timer() async {
    final isAppUpdated = await _checkAppVersion();
    cPrint("App is updated = "+isAppUpdated.toString());
    if (isAppUpdated) {
      cPrint("App is updated");
      Future.delayed(const Duration(seconds: 1)).then((_) {
        /*var state = Provider.of<AuthState>(context, listen: false);
        state.getCurrentUser();*/
      });
    }
  }

  /// Return installed app version
  /// For testing purpose in debug mode update screen will not be open up
  /// If an old version of app is installed on user's device then
  /// User will not be able to see home screen
  /// User will redirected to update app screen.
  /// Once user update app with latest version and back to app then user automatically redirected to welcome / Home page
  Future<bool> _checkAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final currentAppVersion = packageInfo.version;
    final buildNo = packageInfo.buildNumber;
    final config = await _getAppVersionFromFirebaseConfig();




    if (config != null && config['name'] == currentAppVersion && config['versions']==int.tryParse(buildNo)) {
      return true;
    } else {
      if (kDebugMode) {
        cPrint("Latest version of app is not installed on your system");
        cPrint(
            "This is for testing purpose only. In debug mode update screen will not be open up");
        cPrint(
            "If you are planning to publish app on store then please update app version in firebase config");
        return true;
      }
     // Navigator.pushReplacement(context, UpdateApp.getRoute());
      return false;
    }
  }


  /// Returns app version from firebase config
  /// Fetch Latest app version from firebase Remote config
  /// To check current installed app version check [version] in pubspec.yaml
  /// you have to add latest app version in firebase remote config
  /// To fetch this key go to project setting in firebase
  /// Open `Remote Config` section in Firebase
  /// Add [supportedBuild]  as parameter key and below json in Default value
  ///  ```
  ///  {
  ///    "supportedBuild":
  ///    {
  ///       "name": "<Current Build Version>","
  ///       "versions": [ <Current Build Version> ]
  ///     }
  ///  } ```
  /// After adding app version key click on Publish Change button
  /// For package detail check:-  https://pub.dev/packages/firebase_remote_config#-readme-tab-
  Future<Map?> _getAppVersionFromFirebaseConfig() async {
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 1),
        minimumFetchInterval: const Duration(seconds: 1)));
    await remoteConfig.fetchAndActivate();
    // await remoteConfig.activateFetched();
    var data = remoteConfig.getString('supportedBuild');
    cPrint("lucky == "+jsonDecode(data).toString());
    if (data.isNotEmpty) {
      return jsonDecode(data) as Map;
    } else {
      cPrint(
          "Please add your app's current version into Remote config in firebase",
          errorIn: "_getAppVersionFromFirebaseConfig");
      return null;
    }
  }
}
