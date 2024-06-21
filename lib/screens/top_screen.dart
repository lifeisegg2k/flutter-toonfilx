import 'package:flutter/material.dart';

class TopScreen extends StatefulWidget {
  final String listTitle, listImagePath;

  const TopScreen({
    super.key,
    required this.listTitle,
    required this.listImagePath,
  });

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
//
