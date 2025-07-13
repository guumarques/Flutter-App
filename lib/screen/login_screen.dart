import 'package:flutter/material.dart';
import 'dart:math' as math;

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.azulMeiaNoite, Colors.black
            ],
            stops: [0.1, 0.9],
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/images/calendar_icon.png",
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
