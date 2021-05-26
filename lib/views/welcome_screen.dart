import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:library_flutter/utilities/dimension_config.dart';
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
        child: SingleChildScrollView(
          child: Container(
            height: DimensionConfig.heightMultiplier * 100,
            width: DimensionConfig.imageSizeMultiplier * 100,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: DimensionConfig.heightMultiplier * 7,
                  ),
                  Text(
                    'Welcome to Best Friend',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dancingScript(
                      fontSize: DimensionConfig.textMultiplier * 10,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: DimensionConfig.heightMultiplier * 7,
                  ),
                  Text(
                    'Books are the best friends of humans.',
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.itim(
                      fontSize: DimensionConfig.textMultiplier * 5,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: DimensionConfig.heightMultiplier * 15,
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
                          fontSize: DimensionConfig.textMultiplier * 2.25,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterScreen.id);
                    },
                  ),
                  SizedBox(
                    height: DimensionConfig.heightMultiplier * 7,
                  ),
                  TextButton(
                    child: Text(
                      'Log In',
                      style: GoogleFonts.anton(
                        letterSpacing: 2.0,
                        fontSize: DimensionConfig.textMultiplier * 3.5,
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
      ),
    );
  }
}
