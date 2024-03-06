import 'package:flutter/material.dart';
import 'package:test_app/dice_roller/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.deepPurple, Color.fromARGB(255, 216, 136, 32)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
