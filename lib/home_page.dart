import 'package:flutter/material.dart';
import 'package:flutterinmac/tabs/first_tab.dart';
import 'package:flutterinmac/tabs/foutrth_tab.dart';
import 'package:flutterinmac/tabs/secend_tab.dart';
import 'package:flutterinmac/tabs/thread_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('MrReiaz'),
          elevation: 0,
        ),
        body: Container(
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home, color: Colors.orange)),
                  Tab(icon: Icon(Icons.settings, color: Colors.orange)),
                  Tab(icon: Icon(Icons.add, color: Colors.orange)),
                  Tab(icon: Icon(Icons.video_call, color: Colors.orange)),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // 1st tab
                    FirstTab(),
                    // 2nd tab
                    SecendTab(),
                    // 3rd tab
                    ThreadTab(),
                    // 4th
                    FourthTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
