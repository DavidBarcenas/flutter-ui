import 'package:flutter/material.dart';
import 'package:flutterui/widgets/my_btn.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: GestureDetector(
        onTap: () {
          final FocusScopeNode focus = FocusScope.of(context);
          if (!focus.hasPrimaryFocus) {
            focus.unfocus();
          }
        },
        child: Container(
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 300.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(hintText: 'Email'),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(hintText: 'Password'),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      MyBtn(
                        label: 'Ingresar',
                        fullWidth: true,
                        onPressed: () {},
                      )
                    ],
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
