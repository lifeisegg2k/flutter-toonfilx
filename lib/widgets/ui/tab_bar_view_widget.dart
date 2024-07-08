import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'TabBar',
        imgPath: 'images/UiTabBar.png',
        source: '''
    return DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 3, // タブの数
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'One',
              ),
              Tab(
                text: 'Two',
              ),
              Tab(
                text: 'Three',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('This page is one.'),
            ),
            Center(
              child: Text('This page is two.'),
            ),
            Center(
              child: Text('This page is three.'),
            ),
          ],
        ),
      ),
    );''',
        hSize: 850,
        wSize: 350,
      ),
    );
  }
}
