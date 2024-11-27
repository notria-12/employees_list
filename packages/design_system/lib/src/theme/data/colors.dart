import 'package:flutter/widgets.dart';

class AppColors {
  const AppColors._(
      {required this.primary,
      required this.blue10,
      required this.black,
      required this.gray20,
      required this.gray10,
      required this.gray05,
      required this.gray00,
      required this.white});

  factory AppColors.regular() {
    return const AppColors._(
        primary: Color.fromARGB(255, 5, 0, 255),
        blue10: Color.fromARGB(255, 237, 239, 251),
        black: Color.fromARGB(255, 28, 28, 28),
        gray20: Color.fromARGB(255, 158, 158, 158),
        gray10: Color.fromARGB(255, 223, 223, 223),
        gray05: Color.fromARGB(255, 245, 245, 245),
        gray00: Color.fromARGB(255, 240, 240, 240),
        white: Color.fromARGB(255, 255, 255, 255));
  }

  final Color primary;

  final Color blue10;

  final Color black;

  final Color gray20;

  final Color gray10;

  final Color gray05;

  final Color gray00;

  final Color white;
}
