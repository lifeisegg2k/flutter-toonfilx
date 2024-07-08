import 'package:flutter/material.dart';
import 'package:toonflix/constant/constant.dart';
import 'package:toonflix/widgets/tree_view_widget.dart';

class UiWidgetScreen extends StatelessWidget {
  const UiWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueIndigoAccent,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: AppColors.white38,
        foregroundColor: AppColors.black54,
        title: const Text(
          AppString.titleUiWidget,
          style: TextStyle(
            fontSize: AppDimens.fontSize24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: MaterialApp(
        title: 'Simple Animated Tree Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const TreeViewWidget(),
      ),
    );
  }
}
