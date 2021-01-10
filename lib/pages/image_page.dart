import 'package:flutter/material.dart';
import 'package:flutterui/widgets/my_appbar.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              MyAppBar(
                leftIcon:
                    'https://www.flaticon.com/svg/static/icons/svg/2223/2223615.svg',
                rightIcon:
                    'https://www.flaticon.com/svg/static/icons/svg/1370/1370907.svg',
                onLeftClick: () {
                  Navigator.pop(context);
                },
                onRightClick: () {},
              ),
              Center(
                child: Text('ImagePage'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
