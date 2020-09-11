import 'package:flutter/material.dart';
import 'package:flutter_login_page/src/pages/login/login_page.dart';

class PrivatePage extends StatelessWidget {
  Future<bool> _onWillPop({BuildContext context}) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text('Are you sure?'),
            content: Container(
              child: Text('Do you want to disconnect device and go back?'),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              FlatButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                ),
                child: Text('Yes'),
              ),
            ],
          ) ??
          false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context: context),
      child: Scaffold(
        body: Center(
          child: Text('private'),
        ),
      ),
    );
  }
}
