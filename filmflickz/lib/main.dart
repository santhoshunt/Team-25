import 'package:flutter/material.dart';
import 'home.dart';
import 'details.dart';
import 'viewAll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context)=> Home(),
        '/details': (context)=> Details(),
        '/viewall': (context)=> ViewAll(),
      },
    );
  }
}