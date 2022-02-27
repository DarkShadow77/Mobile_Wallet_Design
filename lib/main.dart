import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screen/screen1.dart';

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
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: FirstScreen(),
    );
  }
}
