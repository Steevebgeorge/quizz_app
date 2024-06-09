import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/models/questionfile.dart';
import 'package:quizzapp/resultsummarywidgets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswers, required this.onRestartQuizz});

  final List<String> choosenAnswers;
  final void Function() onRestartQuizz;

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
        height: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                "You have $numOfCorrectAnswers correct answers from $totalQuestions questions ",
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ResultWidgets(summaryData),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: onRestartQuizz,
              icon: const Icon(
                Icons.restart_alt,
                color: Colors.black,
              ),
              label: const Text(
                'Restart Quizz',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
