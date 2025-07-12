import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Contador: $_counter',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: const Text('Incrementar'),
        ),
      ],
    );
  }
}
