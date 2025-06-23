import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Notes_Item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 20),
      itemBuilder: (context, index) {
        return const Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: NotesItem(),
        );
      },
    );
  }
}