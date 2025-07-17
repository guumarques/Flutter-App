import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:myapp/screen/login_screen.dart'; // Altere o caminho se estiver diferente

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  void startTime() async {
    const duration = Duration(seconds: 2);
    Timer(duration, route);
  }

  void route() {
    Navigator.of(context).pushReplacement(_createRoute());
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Login(),
      transitionsBuilder: (_, animation, __, child) {
        final curved = CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOutCubic,
        );
        return FadeTransition(opacity: curved, child: child);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.azulMeiaNoite, Colors.black],
            stops: [0.1, 0.9],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Cronus',
                    textStyle: const TextStyle(
                      fontSize: 50.0,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w900,
                    ),
                    colors: [Colors.white, Colors.blueAccent],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
