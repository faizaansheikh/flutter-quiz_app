import 'package:flutter/material.dart';
import 'questions.dart';
import './answers.dart';
import './category.dart';
class Quiz extends StatelessWidget {
     final List<Map<String, Object>> questions;
   final int questionsIndex;
   final Function questionHandler;
   Quiz({required this.questions, required this.questionsIndex, required this.questionHandler});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Category(questions[questionsIndex]["C"] as String),
      Question("Q : ${questions[questionsIndex]["Q"] as String}",questionsIndex),
      ...(questions[questionsIndex]["A"] as List<Map<String,Object>>).map((answer){
        return Answers(()=>questionHandler(answer["score"]),answer["text"] as String);
      }).toList()
      
    ],);
  }
}