import 'package:flutter/material.dart';
import 'package:flutter_login_page/src/components/enter_buttom.dart';
import 'package:flutter_login_page/src/components/name_input.dart';
import 'package:flutter_login_page/src/components/password_input.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Flexible(
              flex: 4,
              child: Container(
                color: Colors.green,
              ),
            ),
            Flexible(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  NameInput(),
                  SizedBox(
                    height: 30.0,
                  ),
                  PasswordInput(),
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: Center(
                child: AnimatedButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
