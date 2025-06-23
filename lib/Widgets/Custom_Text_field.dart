import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: TextField(
        decoration: InputDecoration(
          border: buildBorder(),
          focusedBorder: buildBorder(KprimaryColor)
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
