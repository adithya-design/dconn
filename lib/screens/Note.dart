import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:rich_text_editor/rich_text_editor.dart';

class Note extends StatefulWidget {
  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {
  SpannableTextEditingController _controller = SpannableTextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Scrollbar(
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.text,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    filled: false,
                  ),
                ),
              ),
            ),
          ),
          StyleToolbar(
            controller: _controller,
          ),
        ],
      ),
    );
  }
}
