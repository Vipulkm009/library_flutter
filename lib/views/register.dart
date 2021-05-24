import 'package:flutter/material.dart';
import 'package:library_flutter/widgets/customized_form.dart';

class RegisterScreen extends StatelessWidget {
  static String id = "Register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          'Registration',
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: CustomizedForm(),
          ),
        ),
      ),
    );
  }
}
