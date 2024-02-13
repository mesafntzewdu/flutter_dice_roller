import 'dart:math';

import 'package:dice_roller/styled_text.dart';
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
  var dice = "assets/images/dice-1.png";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            dice,
            width: 200,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.white54),
            onPressed: rollDice,
            child: const StyledText('Roll Dice'),
          )
        ],
      ),
    );
  }

  void rollDice() {
    int rand = randomizer.nextInt(6) + 1;
    setState(() {
      dice = "assets/images/dice-$rand.png";
    });
  }
}
