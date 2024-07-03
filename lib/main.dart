import 'dart:io';
import 'package:flutter/material.dart';
import 'package:toonflix/constant/app_colors.dart';
import 'package:toonflix/constant/app_string.dart';
import 'package:toonflix/screens/top_screen.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..userAgent = AppString.userAgent;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TopScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.bgColorOrange,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: AppColors.bgColorDarkBlue,
          ),
          titleLarge: TextStyle(
            color: AppColors.red,
          ),
        ),
        cardColor: AppColors.bgColorWhite,
      ),
    );
  }
}
