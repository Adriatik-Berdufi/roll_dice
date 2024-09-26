import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = randomizer.nextInt(6) + 1;
  var diceRoll2 = randomizer.nextInt(6) + 1;
  void rolldice() {
    setState(() {
      diceRoll = randomizer.nextInt(6) + 1;
      diceRoll2 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/dice_img/dice-$diceRoll.png',
              width: 150,
            ),
            Image.asset(
              'assets/dice_img/dice-$diceRoll2.png',
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
                    backgroundColor: const Color.fromARGB(255, 110, 110, 110),
                    side: const BorderSide(color: Colors.blue, width: 3),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    foregroundColor: const Color.fromARGB(255, 186, 224, 255),
                    textStyle: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    )),
                child: const Text('Roll Dice')),
          ],
        )
      ],
    );
  }
}
