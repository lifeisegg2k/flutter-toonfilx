import 'package:flutter/material.dart';
import 'package:toonflix/screens/pomodors_screen.dart';
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
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white38,
        foregroundColor: Colors.black54,
        title: const Text(
          "Lecture - Flutter",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.horizontal, //これで横並びにできる。
          children: [
            const TopWidget(
              listTitle: "Design",
              listImagePath: 'images/AppWallets.png',
              listDesc: 'How to design for Flutter',
              listNextScreen: WalletsScreen(),
            ),
            const SizedBox(
              width: 25,
            ),
            const TopWidget(
              listTitle: "Lifecycle",
              listImagePath: 'images/AppPomodors.png',
              listDesc: 'Stateless and Stateful',
              listNextScreen: WalletsScreen(),
            ),
            const SizedBox(
              width: 25,
            ),
            const TopWidget(
              listTitle: "Pomodors",
              listImagePath: 'images/AppPomodors.png',
              listDesc: 'Timer',
              listNextScreen: PomodorsScreen(),
            ),
            const SizedBox(
              width: 25,
            ),
            TopWidget(
              listTitle: "Webtoon",
              listImagePath: 'images/AppWebtoon.png',
              listDesc: 'Webtoon app using the Never Webtoon API',
              listNextScreen: WebToonScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
