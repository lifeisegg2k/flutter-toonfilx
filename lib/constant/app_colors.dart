import 'package:flutter/material.dart';

// アプリで使用する色の定義をします。独自のマテリアルカラーも定義します。
class AppColors {
  static const Color bgColorWhite = Color(0xFFF4EDDB);
  static const Color bgColorBlack01 = Color(0xFF181818);
  static const Color bgColorBlack02 = Color(0xFF1F2123);
  static const Color bgColorYellow = Color(0xFFF1B33B);
  static const Color bgColorOrange = Color(0xFFE7626C);
  static const Color bgColorDarkBlue = Color(0xFF232B55);
  static const Color bgColorPurple = Color(0xff6750a4);

  static const Color white = Colors.white;
  static const Color white38 = Colors.white38;
  static Color whiteOpacity08 = white.withOpacity(0.8);

  static const Color black = Colors.black;
  static const Color black38 = Colors.black38;
  static const Color black54 = Colors.black54;

  static const Color blue = Colors.blue;
  static const Color lightBlue = Colors.lightBlue;
  static const Color blueIndigoAccent = Colors.indigoAccent;

  static const Color red = Colors.red;

  static const Color green = Colors.green;
  static Color green400 = Colors.green[400]!;

  static const Color amber = Colors.amber;
}

final Map<int, Color> colorMapper = {
  0: Colors.white,
  1: Colors.blueGrey[50]!,
  2: Colors.blueGrey[100]!,
  3: Colors.blueGrey[200]!,
  4: Colors.blueGrey[300]!,
  5: Colors.blueGrey[400]!,
  6: Colors.blueGrey[500]!,
  7: Colors.blueGrey[600]!,
  8: Colors.blueGrey[700]!,
  9: Colors.blueGrey[800]!,
  10: Colors.blueGrey[900]!,
};

extension ColorUtil on Color {
  Color byLuminance() =>
      computeLuminance() > 0.4 ? Colors.black87 : Colors.white;
}
