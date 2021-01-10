import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/pages/chat_page.dart';
import 'package:flutterui/pages/image_page.dart';
import 'package:flutterui/widgets/avatar.dart';
import 'package:flutterui/widgets/bottom_menu.dart';
import 'package:flutterui/widgets/chronometer.dart';
import 'package:flutterui/widgets/my_appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isEnable = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              MyAppBar(
                leftIcon:
                    'https://www.flaticon.com/svg/static/icons/svg/685/685662.svg',
                rightIcon:
                    'https://www.flaticon.com/svg/static/icons/svg/1370/1370907.svg',
                onLeftClick: () {
                  Navigator.pushNamed(context, 'images', arguments: ImagePageArgs(username: 'Images', isActive: true));
                },
                onRightClick: () {
                  final route = MaterialPageRoute(
                      builder: (_) => ChatPage(
                            name: 'Daveepro',
                          ));
                  Navigator.push(context, route);
                },
              ),
              Expanded(
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
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      _isEnable
                          ? Chronometer(
                              initTime: 90,
                            )
                          : Container(),
                      CupertinoButton(
                          child: Text('Enable: $_isEnable'),
                          onPressed: () {
                            final route = MaterialPageRoute(
                                builder: (_) => ChatPage(
                                      name: 'Daveepro',
                                    ));
                            Navigator.push(context, route);
                          })
                    ]),
              ),
            ],
          ),
          bottomNavigationBar: BottomMenu(
            items: [
              BottomMenuItem(
                  assetIcon: 'assets/icons/home.svg', text: 'Inicio'),
              BottomMenuItem(
                  assetIcon: 'assets/icons/back-arrow.svg', text: 'Historial'),
              BottomMenuItem(
                  assetIcon: 'assets/icons/copy.svg', text: 'Ofertas'),
              BottomMenuItem(assetIcon: 'assets/icons/menu.svg', text: 'Más'),
            ],
          )),
    );
  }
}
