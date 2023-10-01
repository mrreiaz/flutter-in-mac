import 'package:flutter/material.dart';

class SecendPage extends StatelessWidget {
  const SecendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text('Privous Page'),
            onPressed: () {
              // go to next page
              Navigator.pushNamed(context, '/firstPage');
            },
          ),
        ),
      ),
    );
  }
}
