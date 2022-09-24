import 'package:flutter/material.dart';

const defaultPadding = 24.0;

class AppColors {
  static const Color bgColor = Color(0xffFBFBFD);
  static const Color darkBlue = Color(0xff0C2073);
  static const Color grey = Color(0xff929292);
  static const Color greyStar = Color(0xffE1E1EA);
  static const Color yellow = Color(0xffFFAB2E);
  static const Color white = Color(0xffffffff);

  static List<BoxShadow> get shadow => [
        BoxShadow(
          color: AppColors.grey.withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 7,
          offset: const Offset(0, 7),
        ),
      ];
}

class TextStyles {
  static const TextStyle h1 = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 28,
    color: AppColors.darkBlue,
    fontWeight: FontWeight.w900,
  );
  static const TextStyle title = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 20,
    color: AppColors.darkBlue,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle subtitle = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 16,
    color: AppColors.grey,
  );
  static const TextStyle titleList = TextStyle(
    fontFamily: 'Avenir',
    fontSize: 24,
    color: AppColors.darkBlue,
    fontWeight: FontWeight.w900,
  );
}
