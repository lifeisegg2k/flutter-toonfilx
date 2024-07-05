import 'package:flutter/material.dart';
import 'package:toonflix/constant/constant.dart';
import 'package:toonflix/widgets/tree_view_widget.dart';

class UiWidgetScreen extends StatelessWidget {
  const UiWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueIndigoAccent,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: AppColors.white38,
        foregroundColor: AppColors.black54,
        title: const Text(
          AppString.title,
          style: TextStyle(
            fontSize: AppDimens.fontSize24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: MaterialApp(
        title: 'Simple Animated Tree Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const TreeViewWidget(),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.dehaze_sharp),
        title: const Text('Title'),
        actions: const [
          Icon(Icons.more_vert),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: Center(
            child: Text(
              'Bottom',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

class AppBarViewWidget extends StatelessWidget {
  const AppBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0, // 初期選択タブ
      length: 3, // タブの数
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'One',
              ),
              Tab(
                text: 'Two',
              ),
              Tab(
                text: 'Three',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('This page is one.'),
            ),
            Center(
              child: Text('This page is two.'),
            ),
            Center(
              child: Text('This page is three.'),
            ),
          ],
        ),
      ),
    );
  }
}

class TextNIconNImageWidget extends StatelessWidget {
  const TextNIconNImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text & Icon & Image'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'This is the text widget.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.red,
                backgroundColor: Colors.amberAccent,
              ),
            ),
          ),
          const Center(
            child: Icon(
              Icons.android,
              size: 200,
              color: Colors.green,
            ),
          ),
          Center(
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            ),
          ),
          Center(
            child: Image.asset(
              'images/AppWallets.png',
              width: MediaQuery.of(context).size.width * 0.60,
            ),
          ),
        ],
      ),
    );
  }
}

class AlignNCenterWidget extends StatelessWidget {
  const AlignNCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align & Center'),
      ),
      body: const Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text('Top Left'),
          ),
          Align(
            alignment: Alignment.center,
            child: Text('Center'),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text('Bottom Right'),
          ),
          Center(
            child: Text('This is the center widget.'),
          ),
        ],
      ),
    );
  }
}

class ContainerNSizedBoxWidget extends StatelessWidget {
  const ContainerNSizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container & SizedBox'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Red Box',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
          const Center(
            child: SizedBox(
              height: 200,
              width: 300,
              child: Card(
                color: Colors.red,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'height: 200\nwidth: 300',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const Center(
            child: SizedBox.expand(
              child: Card(
                color: Colors.red,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'SizedBox.expand',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
