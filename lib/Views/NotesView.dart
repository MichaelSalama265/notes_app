import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/add_Note_Bottom_Sheet.dart';
import 'package:notes_app/Widgets/notesViewBody.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: const notesViewBody(),
    );
  }
}


