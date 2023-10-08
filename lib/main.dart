import 'package:flutter/material.dart';
import 'package:flutterinmac/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        primarySwatch: Colors.orange,
      ),
    );
  }
}
