import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_Text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomTextField(),
        ],
      ),
    );
  }
}