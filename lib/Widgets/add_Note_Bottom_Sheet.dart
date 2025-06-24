import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Custom_Text_field.dart';
import 'package:notes_app/Widgets/custom_botton.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: CustomTextField(hint: 'Title'),
            ),
            SizedBox(height: 16,),
            CustomTextField(hint: 'Content', maxlines: 5),
            SizedBox(height: 30,),
            CustomBotton(),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
