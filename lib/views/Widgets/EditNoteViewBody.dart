import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/views/Widgets/custom_app_bar.dart';
import 'package:flutter_application_1/views/Widgets/custom_text_fieeld.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomAppBar(
                eee: "Edit Note",
                icon: Icons.check,
              ),
              SizedBox(
                height: 32,
              ),
              CustomTextField(hinttext: "Title"),
              SizedBox(
                height: 32,
              ),
              CustomTextField(
                hinttext: "Content",
                maxlines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
