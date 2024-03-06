import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(146, 250, 250, 250),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn Flutter',
          style: TextStyle(color: Colors.amber, fontSize: 30),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 21, 24, 177)),
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    ));
  }
}
