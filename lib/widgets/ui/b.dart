import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class B extends StatelessWidget {
  const B({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'AppBar',
        imgPath: 'images/UiAppBar.png',
        source: '''
''',
        hSize: 400,
        wSize: 350,
      ),
    );
  }
}
