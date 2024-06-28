import 'package:flutter/material.dart';

class TopWidget extends StatefulWidget {
  final String listTitle, listImagePath, listDesc;
  final Widget listNextScreen;

  const TopWidget({
    super.key,
    required this.listTitle,
    required this.listImagePath,
    required this.listDesc,
    required this.listNextScreen,
  });

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
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
              widget.listTitle,
              style: TextStyle(
                color: Theme.of(context).cardColor,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              widget.listImagePath,
              width: displayWidth * 0.60,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              widget.listDesc,
              style: TextStyle(
                color: Theme.of(context).cardColor,
                fontSize: 16,
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
