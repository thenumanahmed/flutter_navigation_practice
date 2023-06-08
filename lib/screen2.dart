import 'package:flutter/material.dart';
import 'package:navigation_practice/home_screen.dart';
import 'package:navigation_practice/screen1.dart';

class Screen2 extends StatefulWidget {
  static String id = 'screen_2';
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
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
            title: Text('Screen 1'),
            onTap: () {
              Navigator.pushReplacementNamed(context, Screen1.id);
            },
          )
        ]),
      ),
      body: Column(
        children: [
          const Center(child: Text('Screen 2')),
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
