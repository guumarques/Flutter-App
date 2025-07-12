import 'package:flutter/material.dart';

class PaddingTeste extends StatelessWidget {
  const PaddingTeste({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey, // Usei uma cor existente no Flutter
      padding: const EdgeInsets.all(50),
      child: const Text('Alguma coisa'),
    );
  }
}
