import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'Divider',
        imgPath: 'images/ui/UiDivider.png',
        source: '''
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divider'),
      ),
      body: Column(
        mainAxisAlignment:
          MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.red, height: 100,
            width: double.infinity,
            child: const Align(
              alignment: Alignment.center,
              child: Text('上', style: TextStyle(
                  color: Colors.white, fontSize: 40,
          ),),),),
          const Divider(
            color: Colors.black, thickness: 5,
          ),
          Container(
            color: Colors.blue, height: 100,
            width: double.infinity,
            child: const Align(
              alignment: Alignment.center,
              child: Text('下', style: TextStyle(
                  color: Colors.white, fontSize: 40,
          ),),),),
        ],
      ),
    );''',
        hSize: 640,
        wSize: 350,
      ),
    );
  }
}
