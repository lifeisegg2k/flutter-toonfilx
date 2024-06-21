import 'package:flutter/material.dart';
import 'package:toonflix/screens/wallets_screen.dart';

class TopWidget extends StatefulWidget {
  final String listTitle, listImagePath;

  const TopWidget({
    super.key,
    required this.listTitle,
    required this.listImagePath,
  });

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WalletsScreen(),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                widget.listTitle,
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                widget.listImagePath,
                width: MediaQuery.of(context).size.width * 0.60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//
