import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'Drawer',
        imgPath: 'images/ui/UiDrawer.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('This is header'),
            ),
            ListTile(
              title: Text('Item1'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Item2'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );''',
        hSize: 540,
        wSize: 350,
      ),
    );
  }
}
