import 'package:bottom_navigation/view/navBar.dart';
import 'package:flutter/material.dart';
import 'view/navBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavPage(),
    );
  }
}
