import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 237, 219, 26),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: Text(
            'Flutter Tips',
            style: TextStyle(color: Colors.black, fontSize: 26),
          ),
          subtitle: Text('build your career',
              style: TextStyle(color: Colors.black, fontSize: 20)),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete, color: Colors.black),
          ),
        ),
        Text(
          'May21 ,2023',
          style: TextStyle(
            color: Colors.black,
          ),
        )
      ]),
    );
  }
}
