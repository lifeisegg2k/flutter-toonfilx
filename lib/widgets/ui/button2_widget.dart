import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class Button2Widget extends StatelessWidget {
  const Button2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'Buttons2',
        imgPath: 'images/ui/UiButton2.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
            MainAxisAlignment.center,
          children: [
            RawMaterialButton(
              onPressed: () {},
              fillColor: Colors.white,
              elevation: 5,
              child:
                const Text('RawMaterialButton'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );''',
        hSize: 600,
        wSize: 350,
      ),
    );
  }
}
