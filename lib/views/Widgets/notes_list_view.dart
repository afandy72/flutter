import 'package:flutter/material.dart';
import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 237, 219, 26),
                borderRadius: BorderRadius.circular(16),
              ),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                ListTile(
                  title: Text(
                    'Tips',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  subtitle: Padding(
                    padding:
                        const EdgeInsets.only(left: 14, top: 16, bottom: 16),
                    child: Text('build your notes',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    'May21 ,2023',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
              ]),
            ),
          );
        });
  }
}
