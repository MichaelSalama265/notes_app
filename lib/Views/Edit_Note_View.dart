import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Widgets/Edit_Note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteViewBody(note: note ));
  }
}
