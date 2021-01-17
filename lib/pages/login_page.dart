import 'package:flutter/material.dart';
import 'package:flutterui/widgets/my_btn.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode _focusNodePsswd = FocusNode();
  String _email = '', _psswd = '', _errorEmail, _errorPsswd;

  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    _focusNodePsswd.dispose();
    super.dispose();
  }

  String _validateEmail(String email) {
    if (email.isNotEmpty && email.contains('@')) {
      _email = email;
      return null;
    }
    return 'Invalid email';
  }

  String _validatePsswd(String psswd) {
    if (psswd.isNotEmpty && psswd.length > 4) {
      _psswd = psswd;
      return null;
    }
    return 'Invalid password';
  }

  _submit() {
   final bool isValid =  _formKey.currentState.validate();
   if(isValid) {

   }
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'daveepro@outlook.com',
                              labelText: 'Email'),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          validator: _validateEmail,
                          onFieldSubmitted: (String text) {
                            _focusNodePsswd.nextFocus();
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          focusNode: _focusNodePsswd,
                          textInputAction: TextInputAction.send,
                          decoration: InputDecoration(
                              hintText: '*******', labelText: 'Contraseña'),
                          validator: _validatePsswd,
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
                    ),
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
