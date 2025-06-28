import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child:
              isLoading
                  ? SizedBox(
                    height: 25,
                    width: 25,
                    child: const CircularProgressIndicator(color: Colors.black),
                  )
                  : const Text(
                    'Add',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
        ),
      ),
    );
  }
}
