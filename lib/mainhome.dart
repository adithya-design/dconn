import 'package:dconn/screens/chats.dart';
import 'package:flutter/material.dart';
import 'package:dconn/screens/chat_screen.dart';
import 'package:dconn/screens/document_screen.dart';
import 'package:dconn/screens/home_screen.dart';
import 'package:dconn/screens/calls.dart';
import 'package:dconn/screens/chats.dart';

class Mainhome extends StatefulWidget {
  static const id = 'mainhome';
  @override
  _MainhomeState createState() => _MainhomeState();
}

class _MainhomeState extends State<Mainhome> {
  int index = 0;

  List<Widget> list = [
    Chats(),
    Documents(),
    Calls(),
    //About us()
    //profile()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Dcon"),
          ),
          body: list[index],
          drawer: MyDrawer(
            onTap: (ctx, i) {
              setState(() {
                index = i;
                Navigator.pop(ctx);
              });
            },
          )),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.black26),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Text("Profile details Or Logo"),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Chat'),
              onTap: () => onTap(context, 0),
            ),
            ListTile(
              leading: Icon(Icons.insert_drive_file),
              title: Text('Documents'),
              onTap: () => onTap(context, 1),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Call'),
              onTap: () => onTap(context, 2),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('About Us'),
              onTap: () => onTap(context, 3),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () => onTap(context, 4),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => onTap(context, 5),
            ),
          ],
        ),
      ),
    );
  }
}
