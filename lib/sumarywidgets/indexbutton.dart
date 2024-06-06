import 'package:flutter/material.dart';

class IndexButton extends StatelessWidget {
  const IndexButton({
    super.key,
    required this.indexnumber,
    required this.isCorrect,
  });

  final int indexnumber;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    final questionnumber = indexnumber + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrect ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionnumber.toString(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
