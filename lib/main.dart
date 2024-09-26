import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          titleTextStyle: TextStyle(
            fontSize: 36,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.black.withOpacity(0.6), // Colore dell'ombra
                offset: const Offset(2.5, 2.5), // Spostamento dell'ombra
                blurRadius: 7.0, // Raggio di sfocatura dell'ombra
              ),
            ],
          ),
        ),
        body: const Center(
          child: DiceRoller(),
        ),
        backgroundColor: const Color.fromARGB(255, 129, 154, 165),
      ),
    );
  }
}
