import 'package:flutter/material.dart';

class ContainerTeste extends StatelessWidget {
  const ContainerTeste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Container(
              color: Colors.azulGaivota,
              width: 300,
              height: 300,
              padding: EdgeInsets.all(50),


              child: Container(
                color: Colors.azulMeiaNoite,
                width: 100,
                height: 100,
                alignment: Alignment.center,
                child: const Text(
                  "Texto",
                  style: TextStyle(color: Colors.white),),
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
