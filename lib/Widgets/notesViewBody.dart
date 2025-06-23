import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/customAppBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Widgets/customNotesItem.dart';

class notesViewBody extends StatelessWidget {
  const notesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(height: 50),
          const customAppBar(),
          SizedBox(height: 20,),
          NotesItem(),
        ],
      ),
    );
  }
}

