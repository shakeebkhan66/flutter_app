import 'package:flutter/material.dart';

class ChangeScreen extends StatelessWidget {
  final String whichAccount;
  final VoidCallback onTap;
  final String name;
  ChangeScreen({required this.name, required this.onTap,required this.whichAccount});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: <Widget>[
          Text(whichAccount),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}