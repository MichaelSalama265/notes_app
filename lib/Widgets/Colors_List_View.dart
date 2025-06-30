import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/Cubits/add_note_cubit/add_note_cubit.dart';

class colorItem extends StatelessWidget {
  const colorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(backgroundColor: color, radius: 28),
        )
        : CircleAvatar(backgroundColor: color, radius: 32);
  }
}

class colorsListView extends StatefulWidget {
  const colorsListView({super.key});

  @override
  State<colorsListView> createState() => _colorsListViewState();
}

class _colorsListViewState extends State<colorsListView> {
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                setState(() {});
              },
              child: colorItem(
                color: kColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
