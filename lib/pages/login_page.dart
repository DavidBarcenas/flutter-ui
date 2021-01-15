import 'package:flutter/material.dart';
import 'package:flutterui/widgets/my_btn.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode _focusNodePsswd = FocusNode();
  String _email = '', _psswd = '', _errorEmail, _errorPsswd;

  @override
  void dispose() {
    _focusNodePsswd.dispose();
    super.dispose();
  }

  String _validateEmail() {
    if (_email.isNotEmpty && _email.contains('@')) {
      return null;
    }
    return 'Invalid email';
  }

  String _validatePsswd() {
    if (_psswd.isNotEmpty && _psswd.length > 4) {
      return null;
    }
    return 'Invalid password';
  }

  _submit() {
    _errorEmail = _validateEmail();
    _errorPsswd = _validatePsswd();

    if (_errorEmail != null || _errorPsswd != null) {
      setState(() {});
      return;
    }
    setState(() {});
  }

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
                        decoration: InputDecoration(
                            hintText: 'daveepro@outlook.com',
                            labelText: 'Email',
                            errorText: _errorEmail),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (text) {
                          setState(() {
                            _email = text;
                          });
                        },
                        onSubmitted: (String text) {
                          _focusNodePsswd.nextFocus();
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        obscureText: true,
                        focusNode: _focusNodePsswd,
                        textInputAction: TextInputAction.send,
                        decoration: InputDecoration(
                            hintText: '*******',
                            labelText: 'Contraseña',
                            errorText: _errorPsswd),
                        onSubmitted: _submit(),
                        onChanged: (text) {
                          setState(() {
                            _psswd = text;
                          });
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      MyBtn(
                        label: 'Ingresar',
                        fullWidth: true,
                        onPressed: _submit,
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
