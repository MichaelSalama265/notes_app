import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Widgets/Colors_List_View.dart';
import 'package:notes_app/Widgets/Custom_Text_Form_field.dart';
import 'package:notes_app/Widgets/custom_botton.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: CustomTextFormField(
              onsaved: (value) {
                title = value;
              },
              hint: 'Title',
            ),
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onsaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          const SizedBox(height: 25),
          const colorsListView(),
          const SizedBox(height: 25),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomBotton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurrentDate = DateFormat.yMd().format(
                      currentDate,
                    );
                    var noteModel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: formattedCurrentDate,
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

