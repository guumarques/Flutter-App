import 'package:flutter/material.dart';
import 'screen/login_screen.dart';

void main() => runApp(const MyApp());

// Widget principal do app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Estrutura do app com tema Material Design
      home: Login()
    );
  }
}