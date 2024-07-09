import 'package:flutter/material.dart';
import 'package:toonflix/widgets/preview_source_widget.dart';

class RefreshIndicatorWidget extends StatelessWidget {
  const RefreshIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 2, // タブの数
      child: PreviewSourceWidget(
        title: 'RefreshIndicator',
        imgPath: 'images/ui/UiRefreshIndicator.png',
        source: '''
    Future<void> refreshFn() {
      return Future.delayed(
        const Duration(seconds: 10),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('RefreshIndicator'),
      ),
      body: RefreshIndicator(
        onRefresh: refreshFn,
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index)
            => ListTile(
            title: Text('List\$index'),
          ),
        ),
      ),
    ); ''',
        hSize: 460,
        wSize: 350,
      ),
    );
  }
}
