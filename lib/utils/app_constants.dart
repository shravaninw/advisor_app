import 'package:flutter/material.dart';

abstract class AppConstants {}

abstract class AppColors {
  final Color black = Colors.black;
  final Color white = Colors.white;

  final Color primary = const Color(0xFF6734FC);
  final Color primaryLight = const Color(0xFF819BD8);
  final Color secondary = const Color(0xFF3FAB7C);
  final Color lightYellow = const Color(0xFFFFF5C9);
  final Color green = const Color(0xFF009688);
  final Color bgColor = const Color(0xFFF2F5FD);
  final Color cardColor = const Color(0xFFFAFAFA);
  final Color primaryDark = const Color(0xFF3300CC);
  final Color textFieldBg = const Color(0xFF27048D).withOpacity(0.3);
  final Color red = Colors.red;
  final Color hintTextColor = const Color(0xFF342A4B).withOpacity(0.5);
}
