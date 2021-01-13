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
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Avatar(),
        SizedBox(
          height: 20.0,
        ),
        Text('Bienvenido'),
        Text(
          'David Bárcenas',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.0,
        ),
        MyBtn(
          label: 'Aceptar',
          onPressed: () =>
              Navigator.pushNamed(context, PostPage.routeName),
        ),
      ]);
  }
}
