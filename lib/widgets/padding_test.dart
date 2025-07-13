import 'package:flutter/material.dart';

class PaddingTeste extends StatelessWidget {
  const PaddingTeste({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.azulGaivota  
      ),
      padding: EdgeInsets.all(60.0),
      margin: EdgeInsets.all(20.0),
      alignment: Alignment.center,
      child: const Text('Boring as Fuck'),
    );
  }
}
