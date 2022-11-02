import 'package:flutter/material.dart';

class ScreenUtils {
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 650;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 650 &&
        MediaQuery.of(context).size.width < 1000;
  }

  static bool isWebOrDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 1000;
  }
}
