import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), centerTitle: true,),
      body: Center(child: SvgPicture.asset('assets/icons/menu.svg', width: 90,))
    );
  }
}