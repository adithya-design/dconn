// import 'package:flutter/material.dart';
// import 'package:flutter_quill/flutter_quill.dart';
// import 'package:flutter_quill/widgets/controller.dart';
// import 'package:flutter_quill/widgets/editor.dart';
// import 'package:flutter_quill/widgets/toolbar.dart';

// class Editor extends StatefulWidget {
//   @override
//   _EditorState createState() => _EditorState();
// }

// class _EditorState extends State<Editor> {
//   QuillController _controller = QuillController.basic();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child: Column(
//             children: [
//               QuillToolbar.basic(controller: _controller),
//               Expanded(
//                 child: Container(
//                   child: QuillEditor.basic(
//                     controller: _controller,
//                     readOnly: false, // true for view only mode
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
