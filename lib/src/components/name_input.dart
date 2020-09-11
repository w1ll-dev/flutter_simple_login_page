import 'package:flutter/material.dart';

class NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _passwordController = TextEditingController();
    _passwordController.text = '';
    return Form(
      child: TextFormField(
        controller: _passwordController,
        decoration: InputDecoration(
          labelText: "Name",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
