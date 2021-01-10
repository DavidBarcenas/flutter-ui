import 'package:flutter/material.dart';
import 'package:flutterui/widgets/my_appbar.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
                onRightClick: () {
                  final route = MaterialPageRoute(builder: (_) => ChatPage());
                  Navigator.push(context, route);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
