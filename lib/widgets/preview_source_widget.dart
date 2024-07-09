import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:toonflix/constant/constant.dart';

class PreviewSourceWidget extends StatelessWidget {
  final String title, imgPath, source;
  final double hSize, wSize;
  const PreviewSourceWidget({
    super.key,
    required this.title,
    required this.imgPath,
    required this.source,
    required this.hSize,
    required this.wSize,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: AppColors.lightBlue,
        foregroundColor: AppColors.white,
        bottom: const ColoredTabBar(
          color: AppColors.bgColorYellow,
          tabBar: TabBar(
            labelColor: AppColors.black,
            unselectedLabelColor: AppColors.black54,
            // dividerColor: AppColors.green,
            indicatorColor: AppColors.blue,
            tabs: [
              Tab(
                text: 'Preview',
              ),
              Tab(
                text: 'Source',
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              imgPath,
              width: MediaQuery.of(context).size.width * 0.85,
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: hSize,
                  width: 35,
                  child: Card(
                    color: AppColors.lightBlue,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: makeLineNum(source),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: SizedBox(
                    height: hSize,
                    width: wSize * 0.9,
                    child: Card(
                      color: AppColors.lightBlue,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          source,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text makeLineNum(String s) {
    String rText = '\n';
    LineSplitter ls = const LineSplitter();

    for (int i = 0; i < ls.convert(s).length; i++) {
      rText += "${i + 1} \n";
    }
    return Text(
      rText,
      style: const TextStyle(color: Colors.white),
    );
  }
}

/// [TabBar]をwrapして背景色を変更するWidget
class ColoredTabBar extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget tabBar;
  final Color color;

  // コンストラクタでchildとなる[TabBar]と背景色を指定
  const ColoredTabBar({
    super.key,
    required this.tabBar,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    // [Ink]でwrapして背景色を指定
    return Ink(
      color: color,
      child: tabBar,
    );
  }

  // [AppBar]のbottomに指定するためには[PreferredSizeWidget]である必要があり、そのためにこのmethodをoverrideします。
  // 実態はchildである[TabBar]のpreferredSizeをそのまま使えばOK
  @override
  Size get preferredSize => tabBar.preferredSize;
}
