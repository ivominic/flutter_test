import 'package:flutter/material.dart';
import 'dart:math';

final randomNumberGenerator = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-2.png";

  void rollDice() {
    setState(() {
      var diceValue = randomNumberGenerator.nextInt(6) + 1;
      activeDiceImage = "assets/images/dice-$diceValue.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll"),
        )
      ],
    );
  }
}
