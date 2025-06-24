import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Widgets/custom_AppBar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          SizedBox(height: 50,),
          customAppBar(
            title: 'Edit Note',
            iconData: Icons.check,
          ),
        ],
      ),
    );
  }
}
