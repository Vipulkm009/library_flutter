import 'package:flutter/material.dart';
import 'package:library_flutter/models/user.dart';
import 'package:library_flutter/utilities/dimension_config.dart';
import 'package:library_flutter/widgets/customized_text_field.dart';

class CustomizedForm extends StatefulWidget {
  @override
  _CustomizedFormState createState() => _CustomizedFormState();
}

class _CustomizedFormState extends State<CustomizedForm> {
  final _formKey = GlobalKey<FormState>();
  UserData userData = UserData(name: '', email: '', password: '');
  String name = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
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
              type: TextInputType.name,
              validator: (text) {
                if (text.length > 50 || text.isEmpty) {
                  return "Invalid Name";
                }
                return null;
              },
              onChanged: (text) {
                name = text;
              },
            ),
            SizedBox(
              height: DimensionConfig.textMultiplier * 5,
            ),
            CustomizedTextField(
              label: 'Email',
              type: TextInputType.emailAddress,
              validator: (text) {
                if (text.contains('@') && text.endsWith('.com')) {
                  return null;
                }
                return "Invalid Email";
              },
              onChanged: (text) {
                email = text;
              },
            ),
            SizedBox(
              height: DimensionConfig.textMultiplier * 5,
            ),
            CustomizedTextField(
              label: 'Password',
              type: TextInputType.text,
              isObsecured: true,
              validator: (text) {
                if (text.length < 8) {
                  return "Weak Password(Should be more than 8 characters";
                }
                return null;
              },
              onChanged: (text) {
                password = text;
              },
            ),
            SizedBox(
              height: DimensionConfig.textMultiplier * 5,
            ),
            CustomizedTextField(
              label: 'Confirm Password',
              type: TextInputType.text,
              isObsecured: true,
              validator: (text) {
                if (text == password) {
                  return "Make sure to enter correct Password";
                }
                return null;
              },
              onChanged: (text) {
                confirmPassword = text;
              },
            ),
            SizedBox(
              height: DimensionConfig.textMultiplier * 10,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Navigator.pop(context);
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: DimensionConfig.textMultiplier * 3,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
