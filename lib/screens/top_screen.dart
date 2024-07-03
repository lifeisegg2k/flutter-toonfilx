import 'package:flutter/material.dart';
import 'package:toonflix/constant/app_colors.dart';
import 'package:toonflix/constant/app_dimens.dart';
import 'package:toonflix/constant/app_string.dart';
import 'package:toonflix/screens/lifecycle_screen.dart';
import 'package:toonflix/screens/pomodoros_screen.dart';
import 'package:toonflix/screens/popup_screen.dart';
import 'package:toonflix/screens/wallets_screen.dart';
import 'package:toonflix/screens/webtoon_screen.dart';
import 'package:toonflix/widgets/top_widget.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({
    super.key,
  });

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
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.dSize020),
        child: ListView(
          scrollDirection: Axis.horizontal, //これで横並びにできる。
          children: [
            const TopWidget(
              index: 0,
              listNextScreen: WalletsScreen(),
            ),
            sizeBoxWidth(),
            const TopWidget(
              index: 1,
              listNextScreen: LifecycleScreen(),
            ),
            sizeBoxWidth(),
            const TopWidget(
              index: 2,
              listNextScreen: PopupScreen(),
            ),
            sizeBoxWidth(),
            const TopWidget(
              index: 3,
              listNextScreen: PomodorosScreen(),
            ),
            sizeBoxWidth(),
            TopWidget(
              index: 4,
              listNextScreen: WebToonScreen(),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox sizeBoxWidth({double widthSize = AppDimens.dSize025}) {
    return SizedBox(
      width: widthSize,
    );
  }
}
