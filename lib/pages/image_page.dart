import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterui/widgets/my_appbar.dart';

class ImagePageArgs {
  final String username;
  final bool isActive;

  ImagePageArgs({@required this.username, @required this.isActive});
}

class ImagePage extends StatefulWidget {
  static final routeName = 'image';
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
                    'https://www.flaticon.com/svg/static/icons/svg/1380/1380338.svg',
                onLeftClick: () {
                  Navigator.pop(context);
                },
                onRightClick: () {},
              ),
              Expanded(
                child: Center(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset('assets/cover.jpeg', fit: BoxFit.cover,)
                    ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
