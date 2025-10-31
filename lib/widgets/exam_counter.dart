import 'package:flutter/material.dart';

class ExamCounter extends StatelessWidget {

  final int counter;

  const ExamCounter({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return(
        Badge(
          padding: EdgeInsets.all(15),
          backgroundColor: Colors.green.shade600,
          label: Text(
            "Вкупен број на испити: $counter",
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        )
    );
  }
}
