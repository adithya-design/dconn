import 'package:dconn/mainhome.dart';
import 'package:flutter/material.dart';
import 'package:dconn/screens/welcome_screen.dart';
import 'package:dconn/screens/login_screen.dart';
import 'package:dconn/screens/registration_screen.dart';
import 'package:dconn/screens/chat_screen.dart';

void main() => runApp(Dconn());

class Dconn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        Mainhome.id: (context) => Mainhome(),
      },
    );
  }
}
