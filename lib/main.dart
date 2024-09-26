import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void rolldice() {
    //codice da eseguire
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dice Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dice Game'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/dice_img/dice-4.png',
                    width: 150,
                  ),
                  Image.asset(
                    'assets/dice_img/dice-4.png',
                    width: 150,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: rolldice,
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 110, 110, 110),
                          side: const BorderSide(color: Colors.blue, width: 3),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          foregroundColor:
                              const Color.fromARGB(255, 186, 224, 255),
                          textStyle: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          )),
                      child: const Text('Roll Dice')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
