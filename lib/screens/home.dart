import 'package:flutter/material.dart';
import 'package:lab_1/models/Exam.dart';
import 'package:lab_1/widgets/card_list.dart';
import 'package:lab_1/widgets/exam_counter.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Exam> exam = [
    Exam(
      subjectName: "Веројатност и статистика",
      dateTime: DateTime(2025, 11, 2, 18, 30),
      examRoom: ["223", "АМФ МФ"],
    ),
    Exam(
      subjectName: "Напредно програмирање",
      dateTime: DateTime(2025, 10, 1, 9, 30),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Анализа и дизајн на ИС",
      dateTime: DateTime(2025, 11, 3, 18, 30),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Мобилни информациски системи",
      dateTime: DateTime(2025, 11, 15, 10, 0),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Вовед во науката на податоци",
      dateTime: DateTime(2025, 11, 16, 11, 0),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Напреден веб дизајн",
      dateTime: DateTime(2025, 11, 17, 12, 0),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Програмирање на видео игри",
      dateTime: DateTime(2025, 11, 17, 13, 0),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Интегрирани системи",
      dateTime: DateTime(2025, 11, 10, 13, 30),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Структурно програмирање",
      dateTime: DateTime(2025, 10, 10, 12, 30),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Бизнис статистика",
      dateTime: DateTime(2025, 11, 11, 14, 0),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Електронска и мобилна трговија",
      dateTime: DateTime(2025, 11, 10, 14, 0),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Интернет програмирање",
      dateTime: DateTime(2025, 11, 10, 14, 40),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Бизнис и менаџмент",
      dateTime: DateTime(2025, 11, 10, 15, 0),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Бази на податоци",
      dateTime: DateTime(2025, 11, 10, 17, 0),
      examRoom: ["лаб.138", "лаб.12"],
    ),
    Exam(
      subjectName: "Дизајн и архитектура на софтвер",
      dateTime: DateTime(2025, 11, 10, 14, 30),
      examRoom: ["лаб.138", "лаб.12"],
    ),
  ];

  @override
  Widget build(BuildContext context) {

    exam.sort((a,b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            Image.network(
              "https://www.finki.ukim.mk/Content/dataImages/downloads/logo-large-500x500_2.png",
              height: 50,
            ),
            const SizedBox(width: 10),
            Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700

                )
            ),
          ],
        )
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(20),
          child:  Column(
            children: [
              CardList(exam: exam),
              const SizedBox(height: 20),
              ExamCounter(counter: exam.length),
              const SizedBox(height: 100),
            ],
          ),
        ),
      )
    );
  }
}
