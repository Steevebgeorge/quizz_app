import 'package:flutter/material.dart';
import 'package:quizzapp/scaffoldsettings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "quizz app",
      debugShowCheckedModeBanner: false, // Ensure this is set to false
      home: ScaffoldSettings(), // Pass the correct widget here
    );
  }
}
