import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'AppBar',
        imgPath: 'images/ui/UiColumn.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
            MainAxisAlignment.center,
          children: const [
            Text(
              'child1',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'child2',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'child3',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );''',
        hSize: 550,
        wSize: 350,
      ),
    );
  }
}
