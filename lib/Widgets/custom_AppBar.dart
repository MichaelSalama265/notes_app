import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_Search_Icon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: const [Text('Notes', style: TextStyle(fontSize: 24)),
    Spacer(),
    customSearchIcon()
    ]
    );
  }
}


