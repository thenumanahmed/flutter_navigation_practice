import 'package:flutter/material.dart';
import 'package:navigation_practice/screen1.dart';
import 'package:navigation_practice/screen2.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(children: [
          ListTile(
            title: Text('Home Screen'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Screen 1'),
            onTap: () {
              Navigator.pushReplacementNamed(context, Screen1.id);
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
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          const Center(child: Text('Home Screen')),
          Center(
              child: TextButton(
            child: Text('Open Screen 1'),
            onPressed: () {
              Navigator.pushNamed(context, Screen1.id);
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
