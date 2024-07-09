import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'SizedBox',
        imgPath: 'images/ui/UiSizedBox.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox'),
      ),
      body: const Column(
        children: [
          Center(
            child: SizedBox(
              // SizedBox.expand(
              height: 200,
              width: 300,
              child: Card(
                color: Colors.red,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'height: 200\nwidth: 300',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );''',
        hSize: 700,
        wSize: 350,
      ),
    );
  }
}
