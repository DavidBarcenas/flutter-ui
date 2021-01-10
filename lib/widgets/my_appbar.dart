import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        CupertinoButton(child: SvgPicture.network('https://www.flaticon.com/svg/static/icons/svg/685/685662.svg', width: 30.0,), onPressed: (){},),
        Text('Davee', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
         CupertinoButton(
           onPressed: (){},
           child: Stack(
            children: [
              SvgPicture.network('https://www.flaticon.com/svg/static/icons/svg/1370/1370907.svg', width: 30.0,),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle
                  ),
                )
              )
         ]))
      ])
    );
  }
}