import 'package:flutter/material.dart';
import 'package:flutterinmac/page_1.dart';
import 'package:flutterinmac/page_2.dart';
import 'package:flutterinmac/page_3.dart';
import 'package:flutterinmac/page_4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedindex = 0;

  void _changePages(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List _pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages[_selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          onTap: _changePages,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_camera_front), label: "Add"),
          ],
        ),
      ),
    );
  }
}
