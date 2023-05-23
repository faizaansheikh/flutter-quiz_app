import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final int questionsIndex;
  Question(this.questionText, this.questionsIndex);
  @override
  Widget build(BuildContext context) {
    // print(questionsIndex);
    return Column(
      children: [
        Container(
          // margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          width: double.infinity,
          color: const Color.fromARGB(255, 33, 10, 37),
          child: Text(
            'Quiz : 0${questionsIndex + 1}',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
        Column(
          children: [
            Container(
              // margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: const Color.fromARGB(255, 23, 6, 26),
              child: Text(
                questionText,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ],
        )
      ],
    );
  }
}
