import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(108.0),
          child: Container(
            child: Center(
              child: Text(
                'Reiaz',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle,
              //borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  offset: const Offset(4.0, 4.0),
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
