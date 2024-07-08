import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class TextNIconWidget extends StatelessWidget {
  const TextNIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'AppBar',
        imgPath: 'images/UiTextIcon.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text & Icon'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'This is the text widget.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.red,
                backgroundColor: Colors.amberAccent,
              ),
            ),
          ),
          const Center(
            child: Icon(
              Icons.android,
              size: 200,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );''',
        hSize: 600,
        wSize: 350,
      ),
    );
  }
}
