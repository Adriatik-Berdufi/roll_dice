import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var firstDice = 'assets/dice_img/dice-4.png';
  var secondDice = 'assets/dice_img/dice-4.png';
  void rolldice() {
    var diceRoll = Random().nextInt(6) + 1;
    var diceRoll2 = Random().nextInt(6) + 1;

    setState(() {
      firstDice = 'assets/dice_img/dice-$diceRoll.png';
      secondDice = 'assets/dice_img/dice-$diceRoll2.png';
    });

    debugPrint(firstDice);
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
              firstDice,
              width: 150,
            ),
            Image.asset(
              secondDice,
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
