import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.answer,
    required this.isSelected,
    required this.isCorrect,
    required this.onTap,
  });

  final String answer;
  final bool isSelected;
  final bool isCorrect;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: isSelected
            ? isCorrect
                ? Colors.green
                : Colors.red
            : Colors.white.withOpacity(.1),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(answer),
          ),
        ),
      ),
    );
  }
}
