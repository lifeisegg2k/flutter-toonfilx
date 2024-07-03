import 'package:flutter/material.dart';
import 'package:toonflix/constant/app_dimens.dart';
import 'package:toonflix/constant/top_list.dart';

class TopWidget extends StatefulWidget {
  final int index;
  final Widget listNextScreen;

  const TopWidget({
    super.key,
    required this.index,
    required this.listNextScreen,
  });

  @override
  State<TopWidget> createState() => _TopWidget2State();
}

class _TopWidget2State extends State<TopWidget> {
  String toTitle(int index) {
    return TopList.listTitle[index];
  }

  String toImagePath(int index) {
    return TopList.listImagePath[index];
  }

  String toDesc(int index) {
    return TopList.listDesc[index];
  }

  @override
  Widget build(BuildContext context) {
    final double displayWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget.listNextScreen,
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              toTitle(widget.index),
              style: TextStyle(
                color: Theme.of(context).cardColor,
                fontSize: AppDimens.fontSize26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              toImagePath(widget.index),
              width: displayWidth * 0.60,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              toDesc(widget.index),
              style: TextStyle(
                color: Theme.of(context).cardColor,
                fontSize: AppDimens.fontSize16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//
