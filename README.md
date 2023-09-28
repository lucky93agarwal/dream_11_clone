# dream_11_clone
A working  fantasy sports platform Mobile App clone built in Flutter using Firebase auth,realtime,firestore database and storage.



## Screen
<p float="left">
<img src="https://github.com/lucky93agarwal/dream_11_clone/blob/main/screenshots/Auth/splash.jpeg" width="200"  title="Splash Screen"/>
<img src="https://github.com/lucky93agarwal/dream_11_clone/blob/main/screenshots/Auth/update.jpeg" width="200"  title="Update App Screen"/>

</p>


## Download App
<a href="https://play.google.com/store/apps/details?id=com.msl.restaurant"><img src="https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png" width="200"></img></a>



## Features
* Slider Screen
* Sign In Screen
* Sign Up Screen
* Forgot Screen
* Verification Screen
* Home Screen
* Create User Profile Screen
* Filter Screen
* Search Screen
* List Screen
* Product Details Screen
* Quantity Screen
* Best Offer Screen
* Favourite Screen
* Payment Screen
* Promo Code Screen
* Add Card Screen
* Thanks Screen
* Order Summary Screen
* Track Order Screen
* Restaurant Details Screen
* Select Time Screen
* Your Information Screen
* Select Person Screen
* Profile Screen
* Review Screen
* Custom Paint
* GetX State Management
* Custom Button
* Custom Title
* Custom App Bar
* Custom Text Field
## Dependencies
<details>
     <summary> Click to expand </summary>

* [intl](https://pub.dev/packages/intl)
* [uuid](https://pub.dev/packages/uuid)
* [http](https://pub.dev/packages/http)
* [share](https://pub.dev/packages/share)
* [provider](https://pub.dev/packages/provider)
* [url_launcher](https://pub.dev/packages/url_launcher)
* [google_fonts](https://pub.dev/packages/google_fonts)
* [image_picker](https://pub.dev/packages/image_picker)
* [firebase_auth](https://pub.dev/packages/firebase_auth)
* [firebase_analytics](https://pub.dev/packages/firebase_analytics)
* [firebase_database](https://pub.dev/packages/firebase_database)
* [shared_preferences](https://pub.dev/packages/shared_preferences)
* [flutter_advanced_networkimage](https://pub.dev/packages/flutter_advanced_networkimage)
* [google_maps_flutter](https://pub.dev/packages/google_maps_flutter)
* [geolocator](https://pub.dev/packages/geolocator)
* [share_plus](https://pub.dev/packages/share_plus)
* [package_info_plus](https://pub.dev/packages/package_info_plus)
</details>

## How to generate SHA-1
Step 1. Open terminal for android folder
Step 2. after that you can type below command
```
.\gradlew signinReport
```
Step 3. Ctrl + Enter press

## How to publish Flutter app on Play Store: Beginner guide
Step 1. Create an upload keystore:

* On Mac/Linux, use the following command:
```
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```
* On Windows, use the following command:
```
keytool -genkey -v -keystore %userprofile%\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

Step 2. Reference the keystore from the app :
* Create a file named [project]/android/key.properties that contains a reference to your keystore:

```
storePassword=<password from previous step>
keyPassword=<password from previous step>
keyAlias=upload
storeFile=<location of the key store file, such as /Users/<user name>/upload-keystore.jks
```
Step 3. Configure signing in gradle :
* Configure gradle to use your upload key when building your app in release mode by editing the [project]/android/app/build.gradle file.
* Add the keystore information from your properties file before the android block:
```
def keystoreProperties = new Properties()
   def keystorePropertiesFile = rootProject.file('key.properties')
   if (keystorePropertiesFile.exists()) {
       keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
   }
 
 android {
         ...
   }`
```
* Find the buildTypes block:
```
buildTypes {
       release {
           // TODO: Add your own signing config for the release build.
           // Signing with the debug keys for now,
           // so flutter run --release works.
           signingConfig signingConfigs.debug
       }
   }
```
* And replace it with the following signing configuration info:
```
signingConfigs {
       release {
           keyAlias keystoreProperties['keyAlias']
           keyPassword keystoreProperties['keyPassword']
           storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
           storePassword keystoreProperties['storePassword']
       }
   }
   buildTypes {
       release {
           signingConfig signingConfigs.release
       }
   }
```
Step 4. Build App Bundle :
```
flutter build appbundle
```

## Folder Structure


```
lib
│
├── Component => This file contains the component
│   ├── ScreenNameComponent Folder
│   │   [Contains all the components For Particular Screen]
│   │       │
│   └──CommonComponet [Folder]
│             [ Contains Widget like button, search bar, textfield... etc ]
│       
│
├── Config => The file contains the configuration file that used main.dart
│   ├── routes 🛣️
│   │       │
│   │       ├── app_routes
│   │       │   [Contains all the routes used in main.dart ]
│   │       │   
│   │       └── route_path
│   │           [ Class to add all the routes, which can be fetched using class ]
│   ├── theme 💄
│   │       │
│   │       ├── theme_collection
│   │       │   [Collection of Themes like dark, light, etc ]
│   │       │   
│   │       ├── abstract_theme
│   │       │   [ Abstract class of theme which will be extended by different theme used ]
│   │       │
│   │       ├── my_theme
│   │       │    [ Current theme setup ]
│   │       │
│   │       └── theme_manager
│   │           [ Method to select theme ]
│   │
│   ├── app_init.dart ⚙️
│   │
│   ├── r.dart 🎞️
│   │   [ Contains Assets path ]
│   │
│   └── text_styles.dart
│       [ Contains all the textStyle used in the App ]
│
├── Constant
│   ├──font_constant
│   │       [ Constant of Fonts that are used in the app ]
│   ├── enum
│   └──string constant
│    
├── Cors
│   ├── common_utils
│   │   [ This file will have the methods to display snackbar, dialogue, etc ]
│   │
│   ├── ApisRoutes
│   │  
│   ├── Api Wrapper
│   │
│   ├── 
│   │ 
│   ├──Other Services
│   └── Shared Prefrance
│ 
├── L10N [Language]
│
├── Screens 🪶 [Folder]
│   └── ScreenName [Folder]
│       │
│       └── screen_name.dart[file in snake_case] 
│          │
│          If contain tab => Another folder with tab_name_screen => Under Screen Name
│
├── Model 💃
│   └── Contains All the Model
│        [ Model for the language ]
│
└── main.dart 🚀
    [Project begins Here]

```



```
Git branch

** developer [From Where Developer will pull and raise PR]
** staging   [ Parallel branch to main]
** main      [ Stable which will not be touched by anyone]

```

Build DEV APK
```
flutter build apk --release --build-name=restaurant_app_dev_1.0.1 --build-number=1
```

Build PROD APK
```
flutter build apk --release --build-name=restaurant_app_1.0.1 --build-number=1

```

Increase the patch version with every build


Share build
```
Create the build from above Command

Upload the build in this folder
https://drive.google.com/drive/folders/1-DwyW8LEWT6fIOWEVTiLORfSHWLPk0mu?usp=sharing

Rename the build like this nepal_calender_dev_version_no

Share the build Link
```


Common Rules
```
Folder name: Folder name should be camelCase, like FolderName
File name: File name should be snake_case, like home_screen.dart
Class Name: Class Name should be camelCase, like ClassName
Fuction Name: Function name should be like this thisIsFuction(){}
```

Remove these from git cache
```
 git rm -r --cached android/local.properties
```
```
git rm -r --cached .idea
```
```
git rm -r --cached .dart_tool
```
```
git rm -r --cached .flutter-plugins
```
```
git rm -r --cached .flutter-plugins-depende
```


Set Upsetream
```
git config --global --add --bool push.autoSetupRemote true
```
This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Visitors Count

<img align="left" src = "https://profile-counter.glitch.me/dream_11_clone/count.svg" alt ="Loading">

