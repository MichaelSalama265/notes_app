import 'package:flutter/material.dart';

class customSearchIcon extends StatelessWidget {
  const customSearchIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.06),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Icon(icon, size: 28)),
    );
  }
}
