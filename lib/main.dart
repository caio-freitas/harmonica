import 'package:flutter/material.dart';
import 'package:harmonica/screens/mainscreen.dart';
import 'package:harmonica/screens/tonecompare.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harmonica',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CarousselScreen(),
        // '/tonecompare': (context) => ToneComparePage(),
      },
    );
  }
}
