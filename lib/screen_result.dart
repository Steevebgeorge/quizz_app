import 'package:flutter/material.dart';
import 'package:quizzapp/models/questionfile.dart';
import 'package:quizzapp/resultsummarywidgets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'given_question': listquestions[i].question,
        'correct_answer': listquestions[i].answers[0],
        'user_choosed_answer': choosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalQuestions = listquestions.length;
    final summaryData = getSummaryData();
    final numOfCorrectAnswers = summaryData
        .where(
          (element) =>
              element['correct_answer'] == element['user_choosed_answer'],
        )
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You have $numOfCorrectAnswers correct answers from $totalQuestions questions "),
            const SizedBox(
              height: 20,
            ),
            ResultWidgets(summaryData),
            const SizedBox(height: 20),
            OutlinedButton(onPressed: () {}, child: const Text("data"))
          ],
        ),
      ),
    );
  }
}
