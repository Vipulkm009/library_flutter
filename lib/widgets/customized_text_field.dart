import 'package:flutter/material.dart';

class CustomizedTextField extends StatelessWidget {
  final String label;
  final TextInputType type;
  final bool isObsecured;
  final Function validator;
  final Function onChanged;
  CustomizedTextField(
      {required this.label,
      required this.type,
      this.isObsecured = false,
      required this.validator,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (text) {
        onChanged(text);
      },
      obscureText: isObsecured,
      validator: (text) {
        validator(text);
      },
      keyboardType: type,
      decoration: InputDecoration(
        filled: true,
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 17.0,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(
            color: Colors.blueGrey,
            width: 5.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 5.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(
            color: Colors.red,
            width: 5.0,
          ),
        ),
      ),
    );
  }
}
