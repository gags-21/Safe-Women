import 'package:flutter/material.dart';
import 'screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safe_Women',
      theme: ThemeData.dark().copyWith(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white)),
      home: MainScreen(),
    );
  }
}
