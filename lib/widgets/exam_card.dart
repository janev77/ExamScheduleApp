

import 'package:flutter/material.dart';

import '../models/Exam.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;

  const ExamCard({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {

    final bool isPassed = exam.dateTime.isBefore(DateTime.now());

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/details", arguments: exam);
      },
      child: Card(
        color: isPassed ? Colors.red.shade100 : Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.green.shade200, width: 5),
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                exam.subjectName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: isPassed ? TextDecoration.lineThrough : TextDecoration.none,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.calendar_today, size: 18, color: Colors.green),
                  const SizedBox(width: 5),
                  Text(
                    "Датум на полагање: ${exam.dateTime.day}/${exam.dateTime.month}/${exam.dateTime.year}",
                    style: TextStyle(
                      fontSize: 14,
                      decoration: isPassed ? TextDecoration.lineThrough : TextDecoration.none,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.access_time, size: 18, color: Colors.green),
                  const SizedBox(width: 5),
                  Text(
                    "Време на полагање: ${exam.dateTime.hour}:${exam.dateTime.minute}",
                    style: TextStyle(
                      fontSize: 14,
                      decoration: isPassed ? TextDecoration.lineThrough : TextDecoration.none,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.meeting_room, size: 18, color: Colors.green),
                  const SizedBox(width: 5),
                  Text(
                    "Просторија: ${exam.examRoom}",
                    style: TextStyle(
                      fontSize: 14,
                      decoration: isPassed ? TextDecoration.lineThrough : TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}