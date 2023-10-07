import 'package:flutter/material.dart';

class SquearBox extends StatelessWidget {
  @override
  final String childText;
  SquearBox({required this.childText});

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        color: Colors.yellow,
        child: Center(
          child: Text(
            childText.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
