import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/widgets/avatar.dart';
import 'package:flutterui/widgets/my_btn.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../post_page.dart';

class MoreTab extends StatefulWidget {
  @override
  _MoreTabState createState() => _MoreTabState();
}

class _MoreTabState extends State<MoreTab> {
  _logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    Navigator.pushNamedAndRemoveUntil(context, 'login', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
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
            onPressed: () => Navigator.pushNamed(context, PostPage.routeName),
          ),
        ]));
  }
}
