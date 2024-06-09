import 'package:flutter/material.dart';
import 'package:quizzapp/models/questionfile.dart';
import 'package:quizzapp/myhomepage.dart';
import 'package:quizzapp/screen_questions.dart';
import 'package:quizzapp/screen_result.dart';

class ScaffoldSettings extends StatefulWidget {
  const ScaffoldSettings({super.key});

  @override
  State<ScaffoldSettings> createState() => _ScaffoldSettingsState();
}

class _ScaffoldSettingsState extends State<ScaffoldSettings> {
  List<String> answewrList = [];
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void selectAnswers(String value) {
    answewrList.add(value);

    if (answewrList.length == listquestions.length) {
      setState(() {
        activeScreen = 'Result-screen';
      });
    }
  }

  void restartQuizz() {
    setState(() {
      answewrList = [];
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = WelcomeScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        selectAnswersfunction: selectAnswers,
      );
    }

    if (activeScreen == 'Result-screen') {
      screenWidget = ResultScreen(
        choosenAnswers: answewrList,
        onRestartQuizz: restartQuizz,
      );
    }

    if (activeScreen == 'q') {}
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 236, 216, 240),
                Color.fromARGB(255, 229, 178, 240),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
