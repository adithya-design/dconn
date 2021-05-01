import 'package:flutter/material.dart';
import 'package:dconn/screens/chat_screen.dart';
import 'package:dconn/screens/document_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}
