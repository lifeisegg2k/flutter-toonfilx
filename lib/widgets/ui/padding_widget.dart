import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'AppBar',
        imgPath: 'images/ui/UiPadding.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding'),
      ),
      body: const Center(
        child: SizedBox.expand(
          child: Padding(
            padding: EdgeInsets.all(100),
            // padding: EdgeInsets.symmetric(
            //   horizontal: 30, vertical: 300
            // ),
            // EdgeInsets.only(
            //   top: 50, right: 100,
            //   bottom: 150, left: 200
            // ),
            child: Card(
              color: Colors.red,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'all: 100',
                  style: TextStyle(
                    color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    ); ''',
        hSize: 650,
        wSize: 350,
      ),
    );
  }
}
