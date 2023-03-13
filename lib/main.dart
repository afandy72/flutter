import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/notesviews.dart';

void main() {
  runApp(const NotesAPP());
}

class NotesAPP extends StatelessWidget {
  const NotesAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const NotesViews(),
    );
  }
}
