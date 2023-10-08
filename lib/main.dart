import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numberOfTimesTap = 0;
  void _incrageANumber() {
    setState(() {
      numberOfTimesTap++;
    });
  }

  void _dicrageANumber() {
    setState(() {
      if (numberOfTimesTap <= 0) {
        numberOfTimesTap = 0;
      } else {
        numberOfTimesTap--;
      }
    });
  }

  void _makeANumberZero() {
    setState(() {
      numberOfTimesTap = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Tap $numberOfTimesTap Times!'),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: _incrageANumber,
                        child: Container(
                          padding: EdgeInsets.all(40),
                          color: Colors.orange,
                          child: Text('+'),
                        ),
                      ),
                      GestureDetector(
                        onTap: _dicrageANumber,
                        child: Container(
                          padding: EdgeInsets.all(40),
                          color: Colors.orange,
                          child: Text('-'),
                        ),
                      ),
                      GestureDetector(
                        onTap: _makeANumberZero,
                        child: Container(
                          padding: EdgeInsets.all(40),
                          color: Colors.orange,
                          child: Text('Make Zero'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
