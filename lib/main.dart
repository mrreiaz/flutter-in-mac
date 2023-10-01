import 'package:flutter/material.dart';
import 'package:flutterinmac/pages/first_page.dart';
import 'package:flutterinmac/pages/secend_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  void userTap() {
    print("CLicked!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstPage': (context) => FirstPage(),
        '/secendPage': (context) => SecendPage(),
      },
    );
  }
}
