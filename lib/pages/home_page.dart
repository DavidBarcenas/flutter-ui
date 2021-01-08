import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterui/widgets/bottom_menu.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset('assets/icons/menu.svg', width: 90,)
        ),
        bottomNavigationBar: BottomMenu(items: [
          BottomMenuItem(assetIcon: 'assets/icons/menu.svg', text: 'Inicio'),
          BottomMenuItem(assetIcon: 'assets/icons/menu.svg', text: 'Inicio'),
          BottomMenuItem(assetIcon: 'assets/icons/menu.svg', text: 'Inicio'),
        ],)
      ),
    );
  }
}