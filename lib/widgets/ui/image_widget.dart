import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'Image',
        imgPath: 'images/ui/UiImage.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
              'https://x.gd/rucMz',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Image.asset(
              'images/app/AppWallets.png',
              width: 260,
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
