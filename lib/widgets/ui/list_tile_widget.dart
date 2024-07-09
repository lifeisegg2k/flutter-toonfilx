import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'ListTile',
        imgPath: 'images/ui/UiListTile.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
      ),
      body: const Column(
        mainAxisAlignment:
          MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            leading: Icon(Icons.add),
            title: Text('ListTile'),
            trailing: Icon(Icons.more_vert),
            tileColor: Colors.black12,
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.add),
              title: Text('ListTile in Card'),
              trailing: Icon(Icons.more_vert),
              tileColor: Colors.redAccent,
            ),
          ),
        ],
      ),
    ); ''',
        hSize: 560,
        wSize: 350,
      ),
    );
  }
}
