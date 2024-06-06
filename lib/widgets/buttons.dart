import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answers, required this.ontap});
  final String answers;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
          foregroundColor: Colors.black,
          backgroundColor: const Color.fromARGB(255, 230, 154, 208),
          textStyle: const TextStyle(fontSize: 18)),
      onPressed: ontap,
      child: Text(answers),
    );
  }
}
