import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class ScrollBarWidget extends StatelessWidget {
  const ScrollBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'ScrollBar',
        imgPath: 'images/ui/UiScrollBar.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollBar'),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        thickness: 10,
        radius: const Radius.circular(10),
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index)
            => ListTile(
            title: Text('List\$index'),
            trailing: const Icon(Icons.more_vert),
          ),
        ),
      ),
    );''',
        hSize: 420,
        wSize: 350,
      ),
    );
  }
}
