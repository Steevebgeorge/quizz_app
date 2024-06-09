import 'package:flutter/material.dart';
import 'package:quizzapp/models/questionfile.dart';
import 'package:quizzapp/widgets/buttons.dart';

// screen after pressing get started button -  question screen

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.selectAnswersfunction});

  final void Function(String answer) selectAnswersfunction;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionCurrentIndex = 0;

  void buttonPress(String sectAnswer2) {
    widget.selectAnswersfunction(sectAnswer2);

    setState(() {
      questionCurrentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = listquestions[questionCurrentIndex];
    return Container(
      margin: const EdgeInsets.only(left: 40, right: 40),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.question, style: const TextStyle(fontSize: 26)),
          const SizedBox(height: 10),
          ...currentQuestion.shuffleAnswers().map(
                (options) => AnswerButton(
                  answers: options,
                  ontap: () {
                    buttonPress(options);
                  },
                ),
              ),
        ],
      ),
    );
  }
}
