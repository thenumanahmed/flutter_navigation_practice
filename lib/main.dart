import 'package:flutter/material.dart';
import 'package:navigation_practice/home_screen.dart';
import 'package:navigation_practice/screen1.dart';
import 'package:navigation_practice/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        Screen1.id: (context) => const Screen1(),
        Screen2.id: (context) => const Screen2(),
      },
      // home: Screen1(),
    );
  }
}
