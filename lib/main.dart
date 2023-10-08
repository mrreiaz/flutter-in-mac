import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 300,
              width: 300,
              color: Colors.orange,
            ),
          ),
          // child: Container(
          //   height: 300,
          //   width: 300,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(60.0),
          //     color: Colors.blue,
          //   ),
          // ),
        ),
      ),
    );
  }
}
