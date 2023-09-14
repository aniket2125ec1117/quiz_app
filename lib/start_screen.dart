import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: const Color.fromARGB(132, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            "Learn flutter in the fun way!",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(129, 255, 255, 255),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(104, 255, 255, 255),
            ),
            onPressed: startQuiz,
            label: const Text(
              "Start Quiz",
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
          ),
        ],
      ),
    );
  }
}
