import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomMenu extends StatelessWidget {
  final List<BottomMenuItem> items;

  const BottomMenu({@required this.items})
      : assert(items != null && items.length > 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(items.length, (index) => items[index])),
      ]),
    );
  }
}

class BottomMenuItem extends StatelessWidget {
  final String assetIcon;
  final String text;

  const BottomMenuItem({@required this.assetIcon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton(
        onPressed: (){},
        padding: EdgeInsets.all(0),
        child: Column(
          children: [
            SvgPicture.asset(
              assetIcon,
              width: 30,
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 12.0, color: Colors.black),
            )
          ],
      )),
    );
  }
}
