import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Widgets/custom_text_fieeld.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 32,
        ),
        CustomTextField(),
      ],
    );
  }
}
