import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text('Next Page'),
            onPressed: () {
              // go to next page
              Navigator.pushNamed(context, '/secendPage');
            },
          ),
        ),
      ),
    );
  }
}
