import 'package:flutter/material.dart';

class UiItems extends StatefulWidget {
  final String title;
  final Color bgColor, textColor;
  final Icon leading, tailing;

  const UiItems({
    super.key,
    required this.title,
    required this.bgColor,
    required this.textColor,
    required this.leading,
    required this.tailing,
  });

  @override
  State<UiItems> createState() => _UiItemsState();
}

class _UiItemsState extends State<UiItems> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.leading,
      title: Text(
        widget.title,
        style: TextStyle(color: widget.textColor),
      ),
      trailing: widget.tailing,
      tileColor: widget.bgColor,
    );
  }
}
