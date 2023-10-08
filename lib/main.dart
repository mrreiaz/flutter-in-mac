import 'package:flutter/material.dart';
import 'package:flutterinmac/fist_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _navigateToNextScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => FistPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(child: Text("H E L L O")),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: _navigateToNextScreen,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      endDrawer: Drawer(),
      body: SafeArea(
        child: Center(
          child: Text('Hello!'),
        ),
      ),
    );
  }
}
