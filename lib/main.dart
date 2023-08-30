import 'package:flutter/material.dart';
import 'package:proyecto1/login_screen.dart';
//import new class

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}
