import 'package:flutter/material.dart';
import 'package:library_flutter/widgets/customized_form.dart';

class RegisterScreen extends StatelessWidget {
  static String id = "Register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registration',
        ),
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: CustomizedForm(),
          ),
        ),
      ),
    );
  }
}
