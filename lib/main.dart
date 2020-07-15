import 'package:flutter/material.dart';
import 'package:chugg/intro.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chugg',
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}