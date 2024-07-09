import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class CardTooltipWidget extends StatelessWidget {
  const CardTooltipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'Card & Tooltip',
        imgPath: 'images/ui/UiCardTooltip.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card & Tooltip'),
      ),
      body: const Column(
        children: [
          Center(
            child: SizedBox(
              height: 100,
              width: 200,
              child: Card(
                elevation: 10,
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Card'),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Tooltip(
              message: 'Press and hold.',
              child: Text('Long press here.'),
            ),
          ),
        ],
      ),
    );''',
        hSize: 620,
        wSize: 350,
      ),
    );
  }
}
