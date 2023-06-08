import 'package:flutter/material.dart';
import 'package:navigation_practice/screen2.dart';

import 'home_screen.dart';

class Screen1 extends StatefulWidget {
  static String id = 'screen_1';
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      drawer: Drawer(
        child: ListView(children: [
          ListTile(
            title: const Text('Home Screen'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.id);
            },
          ),
          ListTile(
            title: Text('Screen 2'),
            onTap: () {
              Navigator.pushReplacementNamed(context, Screen2.id);
            },
          )
        ]),
      ),
      body: Column(
        children: [
          const Center(child: Text('Screen 1')),
          Center(
              child: TextButton(
            child: Text('Open Home Screen '),
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.id);
            },
          )),
          Center(
              child: TextButton(
            child: Text('Open Screen 2'),
            onPressed: () {
              Navigator.pushNamed(context, Screen2.id);
            },
          )),
        ],
      ),
    );
  }
}
