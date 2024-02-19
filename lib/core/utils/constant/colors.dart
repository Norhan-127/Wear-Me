import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color mainColor = Color(0xff48B2E7);
  static  Color lightMainColor = const Color(0xa452b4e7).withOpacity(0.7);
  static const Color deepMainColor = Color(0xff1D7EB6);
  static const Color white = Colors.white;
  static const Color whiteColor = Color(0xfff7f7f9);
  static LinearGradient gradient =  LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomRight,
    colors: [lightMainColor,mainColor, deepMainColor],
  );
}
