import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'ListView',
        imgPath: 'images/ui/UiListView.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.add),
            title: Text('List0'),
            trailing: Icon(Icons.more_vert),
            tileColor: Colors.amber,
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('List1'),
            trailing: Icon(Icons.more_vert),
            tileColor: Colors.greenAccent,
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('List2'),
            trailing: Icon(Icons.more_vert),
            tileColor: Colors.blue,
          ),
        ],
      ),
    );''',
        hSize: 580,
        wSize: 350,
      ),
    );
  }
}
