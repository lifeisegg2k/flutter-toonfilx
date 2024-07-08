import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class AlignNCenterWidget extends StatelessWidget {
  const AlignNCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'AppBar',
        imgPath: 'images/UiAlignCenter.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align & Center'),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 100,
            width: 300,
            child: Card(
              color: Colors.red,
              child: Align(
                // Top Left
                alignment: Alignment.topLeft,
                // Center
                alignment: Alignment.center,
                //Bottom Right
                alignment: Alignment.bottomRight,
                child: Text(
                  'Align: Top Left',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Center(
            child: Text('This is the center widget.'),
          ),
        ],
      ),
    );''',
        hSize: 670,
        wSize: 350,
      ),
    );
  }
}
