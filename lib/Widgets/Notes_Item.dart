import 'package:flutter/material.dart';
import 'package:notes_app/Views/Edit_Note_View.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  'Dreams Come True ncjwnfkemf dfmekcme ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(.8),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black),
                iconSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'June 23 , 2025',
                style: TextStyle(color: Colors.black.withOpacity(.8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
