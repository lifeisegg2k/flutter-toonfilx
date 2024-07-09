import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class Button1Widget extends StatelessWidget {
  const Button1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'Buttons1',
        imgPath: 'images/ui/UiButton1.png',
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
            TextButton(
              onPressed: () {},
              child: const Text('TextButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('OutlinedButton'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('ElevatedButton'),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('FilledButton'),
            ),
          ],
        ),
      ),
    );''',
        hSize: 620,
        wSize: 350,
      ),
    );
  }
}
