import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_Search_Icon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key, required this.title, required this.iconData});
  final String title;
  final IconData iconData ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children:  [
        Text(
          title,
           style: TextStyle(fontSize: 24)),
        Spacer(),
        customSearchIcon(
          icon: iconData,
        ),
      ],
    );
  }
}
