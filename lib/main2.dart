import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment(0.0, 0.0),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              //color: Colors.red[300],
              borderRadius: BorderRadius.circular(33),
              //shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 12.0,
                  spreadRadius: 1.1,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 12.0,
                  spreadRadius: 1.1,
                ),
              ],
              // border: Border.all(
              //   color: Colors.white,
              //   width: 5,
              // ),
            ),
            child: Text(
              'hello!',
              style: TextStyle(fontSize: 33),
            ),
          ),
        ),
      ),
    );
  }
}
