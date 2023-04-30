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
          SizedBox(
            height: 32,
          ),
          TextButton(
              onPressed: () {},
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  " Add",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ))
        ],
      ),
    );
  }
}
