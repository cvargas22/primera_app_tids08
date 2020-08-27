import 'package:flutter/material.dart';
import 'package:primera_clase/screens/homepage_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primera App',
      home: HomePageScreen()
    );
  }
}