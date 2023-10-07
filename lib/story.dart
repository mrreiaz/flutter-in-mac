import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String childText;
  Story({required this.childText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        child: Center(
          child: Text(
            childText.toUpperCase(),
          ),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red[300],
        ),
      ),
    );
  }
}
