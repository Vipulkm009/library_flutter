import 'package:flutter/material.dart';
import 'package:library_flutter/utilities/dimension_config.dart';
import 'package:library_flutter/views/login.dart';
import 'package:library_flutter/views/register.dart';
import 'package:library_flutter/views/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            DimensionConfig().init(constraints, orientation);
            return MaterialApp(
              title: 'Flutter Demo',
              home: WelcomeScreen(),
              initialRoute: WelcomeScreen.id,
              routes: {
                WelcomeScreen.id: (context) => WelcomeScreen(),
                LoginScreen.id: (context) => LoginScreen(),
                RegisterScreen.id: (context) => RegisterScreen(),
              },
            );
          },
        );
      },
    );
  }
}
