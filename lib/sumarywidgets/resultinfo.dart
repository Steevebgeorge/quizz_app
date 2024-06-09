import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/sumarywidgets/indexbutton.dart';

class DataRows extends StatelessWidget {
  const DataRows(this.itemdata, {super.key});
  final Map<String, Object> itemdata;
  @override
  Widget build(BuildContext context) {
    final iscorrectAnswer =
        itemdata['correct_answer'] == itemdata['user_choosed_answer'];
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                    style: GoogleFonts.lato(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text(
                        "Correct Answer: ",
                        style: GoogleFonts.montserrat(),
                      ),
                      Expanded(
                        child: Text(
                          itemdata['correct_answer'] as String,
                          style: GoogleFonts.montserrat(
                              fontSize: 17, fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Your Answer: ",
                        style: GoogleFonts.montserrat(),
                      ),
                      Expanded(
                        child: Text(
                          itemdata['user_choosed_answer'] as String,
                          style: GoogleFonts.montserrat(
                              fontSize: 17, fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
