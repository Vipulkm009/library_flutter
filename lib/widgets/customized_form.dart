import 'package:flutter/material.dart';
import 'package:library_flutter/widgets/customized_text_field.dart';

class CustomizedForm extends StatefulWidget {
  @override
  _CustomizedFormState createState() => _CustomizedFormState();
}

class _CustomizedFormState extends State<CustomizedForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomizedTextField(
              label: 'Name',
            ),
            SizedBox(
              height: 30.0,
            ),
            CustomizedTextField(
              label: 'Email',
            ),
            SizedBox(
              height: 30.0,
            ),
            CustomizedTextField(
              label: 'Password',
            ),
            SizedBox(
              height: 30.0,
            ),
            CustomizedTextField(
              label: 'Confirm Password',
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
