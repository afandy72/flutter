import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Widgets/custom_text_fieeld.dart';

import 'Custombutton.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 430,
        child: SingleChildScrollView(
          child: AddNoteForm(),
        ),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hinttext: "Title",
          ),
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hinttext: "Note",
            maxlines: 9,
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }
}
