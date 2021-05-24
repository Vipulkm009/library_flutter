import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: import_of_legacy_library_into_null_safe
// import 'package:auto_size_text/auto_size_text.dart';
import 'package:library_flutter/views/login.dart';
import 'package:library_flutter/views/register.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'WelcomeScreen';
  @override
  _WelcomeScreen createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _height,
          width: _width,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: _height * 0.10,
                  width: _width,
                ),
                Text(
                  'Welcome to Best Friend',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dancingScript(
                    fontSize: 60.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: _height * 0.10,
                  width: _width,
                ),
                Text(
                  'Books are the best friends of humans.',
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.itim(
                    fontSize: 35.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: _height * 0.15,
                  width: _width,
                ),
                RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 30.0,
                    ),
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.anton(
                        letterSpacing: 1.5,
                        fontSize: 20.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                ),
                SizedBox(
                  height: _height * 0.05,
                  width: _width,
                ),
                TextButton(
                  child: Text(
                    'Log In',
                    style: GoogleFonts.anton(
                      letterSpacing: 2.0,
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
