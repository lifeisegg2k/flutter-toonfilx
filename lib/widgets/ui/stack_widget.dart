import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'Stack',
        imgPath: 'images/ui/UiStack.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200, width: 200,
              color: Colors.blue,
            ),
            Container(
              height: 150, width: 150,
              color: Colors.red,
            ),
            Container(
              height: 100, width: 100,
              color: Colors.yellow,
            ),
            Container(
              height: 50, width: 50,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );''',
        hSize: 580,
        wSize: 350,
      ),
    );
  }
}
