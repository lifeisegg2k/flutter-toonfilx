import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'Container',
        imgPath: 'images/ui/UiContainer.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Red Box',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
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
