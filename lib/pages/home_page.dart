import 'package:flutter/material.dart';
import 'package:flutterui/widgets/avatar.dart';
import 'package:flutterui/widgets/bottom_menu.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Avatar(),
              SizedBox(height: 20.0,),
              Text('Bienvenido'),
              Text('David Bárcenas', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)
            ]

          ),
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