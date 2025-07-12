import 'package:flutter/material.dart';

class SizedBoxTeste extends StatelessWidget {
  const SizedBoxTeste({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Texto 1'),
        SizedBox(height: 100), // Espaço entre os textos
        Text('Texto 2'),
      ],
    );
  }
}
