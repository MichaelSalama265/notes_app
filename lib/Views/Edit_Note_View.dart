import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Widgets/Edit_Note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
