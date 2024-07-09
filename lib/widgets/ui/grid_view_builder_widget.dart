import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'GridView.builder',
        imgPath: 'images/ui/UiGridViewBuilder.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView.builder'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
        ),
        itemCount: 8,
        itemBuilder: (context, index)
          => Container(
          color: index % 4 == 1
              || index % 4 == 2
              ? Colors.green
              : Colors.pinkAccent,
          child: Center(
            child: Text('Grid\$index'),
          ),
        ),
      ),
    ); ''',
        hSize: 520,
        wSize: 350,
      ),
    );
  }
}
