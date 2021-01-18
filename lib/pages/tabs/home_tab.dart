import 'package:flutter/material.dart';
import 'package:flutterui/widgets/avatar.dart';
import 'package:flutterui/widgets/my_btn.dart';
import '../post_page.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home'),
    );
  }
}
