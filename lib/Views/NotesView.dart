import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/notesViewBody.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:const notesViewBody(),
    );
  }
}

