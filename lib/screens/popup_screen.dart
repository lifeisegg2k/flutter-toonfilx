import 'package:flutter/material.dart';
import 'package:toonflix/constant/constant.dart';
import 'package:toonflix/widgets/popup_menu.dart';

class PopupScreen extends StatelessWidget {
  const PopupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: AppColors.bgColorPurple,
      ),
      home: const PopupMenu(),
    );
  }
}

class PopupScreen2 extends StatefulWidget {
  const PopupScreen2({super.key});

  @override
  State<PopupScreen2> createState() => _PopupScreen2State();
}

class _PopupScreen2State extends State<PopupScreen2> {
  List<int> numbers = [];
  bool showTitle = true;
  bool showPopup = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColorWhite,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: AppColors.lightBlue,
        foregroundColor: AppColors.white,
        title: const Text(
          AppString.titlePopup,
          style: TextStyle(
            fontSize: AppDimens.fontSize24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: AppDimens.dSize010,
              onPressed: () => {},
              icon: const Icon(Icons.circle_outlined),
            ),
            const SizedBox(width: AppDimens.dSize003),
            IconButton(
              iconSize: AppDimens.dSize010,
              onPressed: () => {},
              icon: const Icon(Icons.circle_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
