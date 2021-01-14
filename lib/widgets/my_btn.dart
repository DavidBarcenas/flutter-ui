import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color background;
  final Color textColor;
  final bool fullWidth;

  const MyBtn(
      {Key key,
      @required this.label,
      this.onPressed,
      this.background,
      this.textColor,
      this.fullWidth = false})
      : assert(label != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 20,
      padding: EdgeInsets.all(0),
      child: Container(
        width: fullWidth ? double.infinity : null,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor ?? Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        decoration: BoxDecoration(
            color: background ?? Colors.white,
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
            borderRadius: BorderRadius.circular(25)),
      ),
      onPressed: () {
        FocusScope.of(context).unfocus();
        onPressed();
      },
    );
  }
}
