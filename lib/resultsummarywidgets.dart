import 'package:flutter/material.dart';
import 'package:quizzapp/sumarywidgets/resultinfo.dart';

class ResultWidgets extends StatelessWidget {
  const ResultWidgets(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => DataRows(data),
              )
              .toList(),
        ),
      ),
    );
  }
}
