import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Widgets/Notes_List.dart';
import 'package:notes_app/Widgets/custom_AppBar.dart';

class notesViewBody extends StatefulWidget {
  const notesViewBody({super.key});

  @override
  State<notesViewBody> createState() => _notesViewBodyState();
}

class _notesViewBodyState extends State<notesViewBody> {
  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: const [
          SizedBox(height: 50),
          const customAppBar(
            title: 'Notes',
            iconData: Icons.search,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}


