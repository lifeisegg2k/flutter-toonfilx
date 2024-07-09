import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'ListView.builder',
        imgPath: 'images/ui/UiListViewBuilder.png',
        source: '''
    const List<Color> colors = [
      Colors.purpleAccent,
      Colors.cyanAccent,
      Colors.pinkAccent,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.builder'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index)
          => ListTile(
          leading: const Icon(Icons.add),
          title: Text('List\$index'),
          trailing: const Icon(Icons.more_vert),
          tileColor: colors[index],
        ),
      ),
    );''',
        hSize: 460,
        wSize: 350,
      ),
    );
  }
}
