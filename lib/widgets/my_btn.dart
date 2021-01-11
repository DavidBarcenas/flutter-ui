import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color background;
  final Color textColor;

  const MyBtn({Key key, @required this.label, this.onPressed, this.background, this.textColor})
      : assert(label != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton( 
      minSize: 20,
      padding: EdgeInsets.all(0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Text(
          label,
          style: TextStyle(color: textColor ?? Colors.black, fontWeight: FontWeight.w500),
        ),
        decoration: BoxDecoration(
          color: background ?? Colors.white, 
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
          borderRadius: BorderRadius.circular(25)
        ),
      ),
      onPressed: onPressed,
    );
  }
}
