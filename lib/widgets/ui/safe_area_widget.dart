import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'SafeArea',
        imgPath: 'images/ui/UiSafeArea.png',
        source: '''
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SafeArea'),
        ),
        backgroundColor: Colors.red,
      ),
    );,''',
        hSize: 200,
        wSize: 350,
      ),
    );
  }
}
