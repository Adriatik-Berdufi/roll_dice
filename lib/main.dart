import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

void main() {
  runApp(const MyApp());
}

var activeDiceImg = 'assets/dice_img/dice-4.png';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void rolldice() {
    activeDiceImg = 'assets/dice_img/dice-1.png';
    debugPrint(activeDiceImg);
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
        body: const Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}
