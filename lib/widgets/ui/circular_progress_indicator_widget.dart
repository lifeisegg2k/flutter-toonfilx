import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  const CircularProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'CircularProgressIndicator',
        imgPath: 'images/ui/UiCircularProgressIndicator.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const
          Text('CircularProgressIndicator'),
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    ); ''',
        hSize: 230,
        wSize: 350,
      ),
    );
  }
}
