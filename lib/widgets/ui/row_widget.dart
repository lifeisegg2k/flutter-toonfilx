import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'AppBar',
        imgPath: 'images/ui/UiRow.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment:
            MainAxisAlignment.spaceAround,
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
        hSize: 540,
        wSize: 350,
      ),
    );
  }
}
