import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'SingleChildScrollView',
        imgPath: 'images/ui/UiSingleChildScrollView.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title:
          const Text('SingleChildScrollView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < 100; i++) ...{
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('child\$i'),
                  ),
                ),
              },
            ],
          ),
        ),
      ),
    );''',
        hSize: 580,
        wSize: 350,
      ),
    );
  }
}
