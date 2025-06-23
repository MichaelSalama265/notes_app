import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Notes_List.dart';
import 'package:notes_app/Widgets/custom_AppBar.dart';

class notesViewBody extends StatelessWidget {
  const notesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: const [
          SizedBox(height: 50),
          const customAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}


