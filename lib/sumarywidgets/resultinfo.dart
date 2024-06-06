import 'package:flutter/material.dart';
import 'package:quizzapp/sumarywidgets/indexbutton.dart';

class DataRows extends StatelessWidget {
  const DataRows(this.itemdata, {super.key});
  final Map<String, Object> itemdata;
  @override
  Widget build(BuildContext context) {
    final iscorrectAnswer =
        itemdata['correct_answer'] == itemdata['user_choosed_answer'];
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IndexButton(
              indexnumber: itemdata['question_index'] as int,
              isCorrect: iscorrectAnswer),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemdata['given_question'] as String,
                style:
                    const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              Text(
                itemdata['correct_answer'] as String,
                style: const TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 193, 58, 235)),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
