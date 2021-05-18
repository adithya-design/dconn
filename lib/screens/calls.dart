import 'package:flutter/material.dart';

import 'package:dconn/screens/document_screen.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Calls"),
        ),
      ),
    );
  }
}
