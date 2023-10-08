import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  double boxHight = 200.0;
  double boxWidth = 200.0;

  var boxColor = Colors.pink;

  void _expandBox() {
    setState(() {
      boxHight = 300.0;
      boxWidth = 300.0;
    });
  }

  void _changeBoxColor() {
    setState(() {
      boxColor = Colors.deepPurple;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: GestureDetector(
        onTap: _changeBoxColor,
        child: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            height: boxHight,
            width: boxWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: boxColor,
            ),
          ),
        ),
      ),
    );
  }
}
