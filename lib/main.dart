import 'package:flutter/material.dart';

import 'squear.dart';
import 'story.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 6',
    'post 7',
  ];

  final List _story = [
    'Stroy 1',
    'Stroy 2',
    'Stroy 3',
    'Stroy 4',
    'Stroy 5',
    'Stroy 6',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              //instagram story
              Container(
                height: 100,
                child: ListView.builder(
                    itemCount: _story.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Story(
                        childText: _story[index],
                      );
                    }),
              ),
              //instagram post
              Expanded(
                child: ListView.builder(
                  itemCount: _posts.length,
                  itemBuilder: (context, index) {
                    return SquearBox(
                      childText: _posts[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
