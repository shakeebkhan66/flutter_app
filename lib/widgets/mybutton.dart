import 'dart:ffi';

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  MyButton({required this.name, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
      ),
      child: MaterialButton(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          name,
          textScaleFactor: 1.2,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, letterSpacing: 1.2),
        ),
        onPressed: onPressed,
      ),
    );
  }
}