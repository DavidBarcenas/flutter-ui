import 'package:flutter/material.dart';
import 'package:flutterui/utils/fake_data.dart';
import 'package:flutterui/widgets/my_appbar.dart';

import 'chat_page.dart';
import 'image_page.dart';

class PostPage extends StatefulWidget {
  static final routeName = 'posts';
  
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              MyAppBar(
                leftIcon:
                    'https://www.flaticon.com/svg/static/icons/svg/685/685662.svg',
                rightIcon:
                    'https://www.flaticon.com/svg/static/icons/svg/1380/1380338.svg',
                onLeftClick: () {
                  Navigator.pushNamed(context, 'images',
                      arguments:
                          ImagePageArgs(username: 'Images', isActive: true));
                },
                onRightClick: () {
                  final route = MaterialPageRoute(
                      builder: (_) => ChatPage(
                            name: 'Daveepro',
                          ));
                  Navigator.push(context, route);
                },
              ),
              Expanded(child: ListView.builder(
                itemBuilder: (_, i) => ListTile(title: Text(data[i])),
                itemCount: data.length,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
