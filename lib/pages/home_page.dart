import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/pages/chat_page.dart';
import 'package:flutterui/pages/image_page.dart';
import 'package:flutterui/pages/tabs/history_tab.dart';
import 'package:flutterui/pages/tabs/home_tab.dart';
import 'package:flutterui/pages/tabs/more__tab.dart';
import 'package:flutterui/pages/tabs/offers_tab.dart';
import 'package:flutterui/widgets/bottom_menu.dart';
import 'package:flutterui/widgets/custom_pageview.dart';
import 'package:flutterui/widgets/my_appbar.dart';

class HomePage extends StatefulWidget {
  static final routeName = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;

  final _menu = [
    BottomMenuItem(
      assetIcon: 'assets/icons/home.svg',
      text: 'Inicio',
      content: HomeTab(),
    ),
    BottomMenuItem(
      assetIcon: 'assets/icons/back-arrow.svg',
      text: 'Historial',
      content: HistoryTab(),
    ),
    BottomMenuItem(
      assetIcon: 'assets/icons/copy.svg',
      text: 'Ofertas',
      content: OffersTab(),
    ),
    BottomMenuItem(
      assetIcon: 'assets/icons/menu.svg',
      text: 'Más',
      content: MoreTab(),
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

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
                    'https://www.flaticon.com/svg/static/icons/svg/1380/1380338.svg',
                onLeftClick: () {
                  Navigator.pushNamed(context, 'images',
                      arguments:
                          ImagePageArgs(username: 'Images', isActive: true));
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
                child: CustomPageView(
                  children: _menu.map((item) => item.content).toList(),
                  currentPage: _currentPage,
              )),
            ],
          ),
          bottomNavigationBar: BottomMenu(
              currentPage: _currentPage,
              onChanged: (int page) {
                setState(() => _currentPage = page);
              },
              items: _menu)),
    );
  }
}
