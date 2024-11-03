import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';

class YDeviceUtils{

  // -- I N T E R N E T   C O N N E C T I O N
  static Future<bool> hasInternetConnection () async {
    try{
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  // -- U R L   L A U N C H E R
  static void launchUrl (String url) async {
    if(await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // -- D E V I C E   C H E C K
  /// -- PHYSICAL DEVICE
  static Future<bool> isPhysicalDevice () async {
    return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  }
  /// -- ANDROID DEVICE CHECK
  static bool isAndroid () {
    return Platform.isAndroid;
  }
  /// -- IOS DEVICE CHECK
  static bool isIOS () {
    return Platform.isIOS;
  }
  /// -- DARK MODE CHECK
  static bool isDarkMode (BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }


  // -- S T A T U S   B A R   C O L O R
  static Future<void> setStatusBarColor (Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  // -- S H O W   S T A T U S   B A R
  static void showStatusBar () {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  // -- H I D E   S T A T U S   B A R
  static void hideStatusBar () {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  // -- A P P   B A R   H E I G H T
  static double appBarHeight () {
    return kToolbarHeight;
  }

  // -- B O T T O M   N A V I G A T I O  N   B A R   H E I G H T
  static double bottomNavigationBarHeight () {
    return kBottomNavigationBarHeight;
  }

  // -- V I B R A T E
  static void vibrate (Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  // -- H I D E   K E Y B O A R D
  static void hideKeyboard (BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }


  // -- D E V I C E   O R I E N T A T I O N
  /// -- LANDSCAPE ORIENTATION
  static bool isLandscapeOrientation (BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }
  /// -- PORTRAIT ORIENTATION
  static bool isPortraitOrientation (BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }
  /// -- FULL SCREEN ORIENTATION
  static void setFullScreen (bool enable) {
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }
  /// -- PREFERRED ORIENTATION
  static Future<void> setPreferredOrientation (List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }


  // -- M E D I A   Q U E R Y
  /// -- SCREEN SIZE
  static Size screenSize (BuildContext context) {
    return MediaQuery.of(context).size;
  }
  /// -- SCREEN HEIGHT
  static double screenHeight (BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  /// -- SCREEN WIDTH
  static double screenWidth (BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
  /// -- PIXEL RATIO
  static double pixelRatio (BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }
  /// -- STATUS BAR HEIGHT
  static double statusBarHeight (BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }
  /// -- KEYBOARD HEIGHT
  static double keyboardHeight (BuildContext context) {
    final viewInsets = MediaQuery.of(context).viewInsets;
    return viewInsets.bottom;
  }
  /// -- KEYBOARD VISIBILITY
  static Future<bool> isKeyboardVisible (BuildContext context)  async {
    final viewInsets = MediaQuery.of(context).viewInsets;
    return viewInsets.bottom > 0;
  }

}