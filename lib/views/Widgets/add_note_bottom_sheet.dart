import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Widgets/custom_text_fieeld.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hinttext: "Title",
          ),
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hinttext: "Note",
            maxlines: 9,
          ),
          TextButton(
              onPressed: () {},
              child: Container(
                width: 74,
                height: 22,
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  " Add",
                  style: TextStyle(color: Colors.black),
                ),
              ))
        ],
      ),
    );
  }
}
