import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterui/widgets/bottom_menu.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset('assets/icons/home.svg', width: 90,)
        ),
        bottomNavigationBar: BottomMenu(items: [
          BottomMenuItem(assetIcon: 'assets/icons/home.svg', text: 'Inicio'),
          BottomMenuItem(assetIcon: 'assets/icons/back-arrow.svg', text: 'Historial'),
          BottomMenuItem(assetIcon: 'assets/icons/copy.svg', text: 'Ofertas'),
          BottomMenuItem(assetIcon: 'assets/icons/menu.svg', text: 'Más'),
        ],)
      ),
    );
  }
}