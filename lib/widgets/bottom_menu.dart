import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomMenu extends StatelessWidget {
  final List<BottomMenuItem> items;
  final int currentPage;
  static bool isActive;
  final void Function(int) onChanged;

  const BottomMenu(
      {@required this.items, @required this.currentPage, this.onChanged})
      : assert(items != null && items.length > 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(items.length, (index) {
              isActive = index == currentPage;
              return BottomMenuItem(
                  assetIcon: items[index].assetIcon,
                  text: items[index].text,
                  active: isActive,
                  index: index,
                  onChanged: onChanged,);
            })),
      ]),
    );
  }
}

class BottomMenuItem extends StatelessWidget {
  final String assetIcon;
  final String text;
  final bool active;
  final int index;
  final void Function(int) onChanged;

  const BottomMenuItem(
      {@required this.assetIcon,
      @required this.text,
      this.active,
      this.index,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    print('Boton =>  ${BottomMenu.isActive}');
    return Expanded(
      child: CupertinoButton(
          onPressed: () => onChanged(index),
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              SvgPicture.asset(assetIcon,
                  width: 30, color: active ? Colors.blue : Colors.black),
              SizedBox(
                height: 3.0,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 12.0, color: active ? Colors.blue : Colors.black),
              )
            ],
          )),
    );
  }
}
