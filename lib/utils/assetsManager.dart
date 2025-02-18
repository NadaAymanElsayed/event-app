import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class AssetsManager {
  static const String splashLight = "assets/lightMode/splashScreen.png";
  static const String splashDark = "assets/darkMode/splashScreen.png";

  static const String onboarding1Light = "assets/lightMode/onboarding1.png";
  static const String onboarding1Dark = "assets/darkMode/onboarding1.png";

  static const String onboarding2Light = "assets/lightMode/onboarding2.png";
  static const String onboarding2Dark = "assets/darkMode/onboarding2.png";

  static const String onboarding3Light = "assets/lightMode/onboarding3.png";
  static const String onboarding3Dark = "assets/darkMode/onboarding3.png";

  static const String onboarding4Light = "assets/lightMode/onboarding4.png";
  static const String onboarding4Dark = "assets/darkMode/onboarding4.png";
}
class AppTheme{
  static final ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.white
  );
  static final ThemeData darkMode = ThemeData(
      scaffoldBackgroundColor: const Color.fromRGBO(16, 17, 39, 1)
  );
}