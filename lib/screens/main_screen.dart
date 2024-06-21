import 'package:flutter/material.dart';

class MainList extends StatefulWidget {
  final String listTitle, listImagePath;

  const MainList({
    super.key,
    required this.listTitle,
    required this.listImagePath,
  });

  @override
  State<MainList> createState() => _MainListState();
}

class _MainListState extends State<MainList> {
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
