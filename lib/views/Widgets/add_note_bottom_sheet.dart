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
            height: 30,
          ),
          TextButton(
              onPressed: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    " Add",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
