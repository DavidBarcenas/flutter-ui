import 'package:flutter/material.dart';
import 'package:flutterui/widgets/my_appbar.dart';

class ChatPage extends StatefulWidget {
  final String name;

  const ChatPage({Key key, @required this.name}) : assert(name != null), super(key: key);

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
                    'https://www.flaticon.com/svg/static/icons/svg/1380/1380338.svg',
                onLeftClick: () {
                  Navigator.pop(context);
                },
                onRightClick: () {},
              ),
              Center(
                child: Text(widget.name),
              )
            ],
          ),
        ),
      ),
    );
  }
}
