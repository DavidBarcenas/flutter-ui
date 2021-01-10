import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAppBar extends StatelessWidget {
  final String leftIcon, rightIcon;
  final VoidCallback onLeftClick, onRightClick;

  const MyAppBar(
      {Key key,
      @required this.leftIcon,
      @required this.rightIcon,
      this.onLeftClick,
      this.onRightClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CupertinoButton(
            child: SvgPicture.network(
              leftIcon,
              width: 30.0,
            ),
            onPressed: onLeftClick,
          ),
          Text(
            'Davee',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          CupertinoButton(
              onPressed: onRightClick,
              child: Stack(children: [
                SvgPicture.network(
                  rightIcon,
                  width: 30.0,
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                    ))
              ]))
        ]));
  }
}
