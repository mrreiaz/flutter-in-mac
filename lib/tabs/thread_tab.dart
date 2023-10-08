import 'package:flutter/material.dart';

class ThreadTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[400],
      child: Center(
        child: Text(
          'Therd Tab',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
