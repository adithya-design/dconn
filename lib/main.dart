// @dart=2.9

import 'package:dconn/mainhome.dart';
import 'package:flutter/material.dart';
import 'package:dconn/screens/welcome_screen.dart';
import 'package:dconn/screens/login_screen.dart';
import 'package:dconn/screens/registration_screen.dart';

import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

// void main() => runApp(Dconn());

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Firebase.initializeApp();

  runApp(Dconn());
}

class Dconn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        Mainhome.id: (context) => Mainhome(),
      },
    );
  }
}
