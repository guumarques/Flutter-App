import 'package:flutter/material.dart';

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
            colors: [Colors.azulMeiaNoite, Colors.black],
            stops: [0.1, 0.9],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/calendar_icon.png",
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 10),

              // Texto "Bem-vindo de volta!" com contorno
              Stack(
                children: <Widget>[
                  Text(
                    'Bem-vindo de volta!',
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 32,
                      foreground:
                          Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.white,
                    ),
                  ),
                  Text(
                    'Bem-vindo de volta!',
                    style: TextStyle(
                      fontFamily: "Gilroy",
                      fontSize: 32,
                      color: Color(0xFF004D40),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // Subtexto descritivo
              Text(
                'Organize sua rotina com facilidade.',
                style: TextStyle(
                  fontFamily: "Gilroy",
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
