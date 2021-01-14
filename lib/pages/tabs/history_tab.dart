import 'package:flutter/material.dart';

class HistoryTab extends StatefulWidget {
  @override
  _HistoryTabState createState() => _HistoryTabState();
}

class _HistoryTabState extends State<HistoryTab> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) => Container(
        color: Colors.blue,
        height: constrains.maxHeight,
        width: constrains.maxWidth,
      )
    );
  }
}
