import 'package:flutter/material.dart';
import 'widgets/counter_widget.dart';
import 'widgets/padding_test.dart';
import 'widgets/sized_box_test.dart';

void main() => runApp(const MyApp());

// Widget principal do app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Estrutura do app com tema Material Design
      home: Scaffold(
        appBar: AppBar(title: const Text('App com Padding')),
        body: Center(
          child:Column(
            children: [
              CounterWidget(),
              PaddingTeste(),
              SizedBoxTeste()
            ],
          )
        ),
      ),
    );
  }
}