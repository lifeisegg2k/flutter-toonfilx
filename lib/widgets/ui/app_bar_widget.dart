import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'AppBar',
        imgPath: 'images/UiAppBar.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
      leading: const Icon(Icons.dehaze_sharp),
      title: const Text('Title'),
      actions: const [
        Icon(Icons.more_vert),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: Center(
          child: Text(
            'Bottom',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    ),''',
        hSize: 400,
        wSize: 350,
      ),
    );
  }
}
