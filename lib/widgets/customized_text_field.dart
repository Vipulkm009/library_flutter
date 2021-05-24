import 'package:flutter/material.dart';

class CustomizedTextField extends StatelessWidget {
  final String label;
  CustomizedTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        filled: true,
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 17.0,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(
            color: Colors.purple,
            width: 20.0,
          ),
        ),
      ),
    );
  }
}
