import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          child:  CircleAvatar(backgroundColor: color, radius: 28),
        )
        :  CircleAvatar(backgroundColor: color, radius: 32);
  }
}

class colorsListView extends StatefulWidget {
  const colorsListView({super.key});

  @override
  State<colorsListView> createState() => _colorsListViewState();
}

class _colorsListViewState extends State<colorsListView> {
  int currentIndex = 0;
  List<Color> Colors = const [
    Color(0xff03045EE),
    Color(0xff0077B6),
    Color(0xff00B4D8),
    Color(0xff90E0EF),
    Color(0xffCAF0F8),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: colorItem(
                color: Colors[index],
                isActive: currentIndex == index),
            ),
          );
        },
      ),
    );
  }
}
