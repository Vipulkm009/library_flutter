import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:library_flutter/utilities/dimension_config.dart';
import 'package:library_flutter/views/login.dart';
import 'package:library_flutter/views/login_phone.dart';
import 'package:library_flutter/views/register.dart';
import 'package:library_flutter/views/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
              home: LoginPhoneScreen(),
              initialRoute: LoginPhoneScreen.id,
              routes: {
                LoginPhoneScreen.id: (context) => LoginPhoneScreen(),
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
