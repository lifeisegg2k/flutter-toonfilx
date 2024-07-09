import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'FittedBox',
        imgPath: 'images/ui/UiFittedBox.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBox'),
      ),
      body: Center(
        child: FittedBox(
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
              Text(
                'child4',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
      ),
    );''',
        hSize: 670,
        wSize: 350,
      ),
    );
  }
}
