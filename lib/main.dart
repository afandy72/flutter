import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/notesviews.dart';
import 'package:hive_flutter/adapters.dart';

import 'constant.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotesbox);
  runApp(const NotesAPP());
}

class NotesAPP extends StatelessWidget {
  const NotesAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const NotesViews(),
    );
  }
}
