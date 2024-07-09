import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'GridView',
        imgPath: 'images/ui/UiGridView.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          Container(
            color: Colors.amber,
            child: Center(
              child: Text('Grid0'),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Text('Grid1'),
            ),
          ),
          // Container() repeated 6 times
        ],
      ),
    );''',
        hSize: 550,
        wSize: 350,
      ),
    );
  }
}
