import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    _nameController.text = '';
    return Form(
      child: TextFormField(
        controller: _nameController,
        decoration: InputDecoration(
          labelText: "Password",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
