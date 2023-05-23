import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionsIndex = 0;
  var totalScore = 0;
  dynamic _questionHandler(int score) {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    totalScore += score;
    // print(totalScore);
  }

  dynamic backHandler() {
    setState(() {
      _questionsIndex = 0;
    });
    totalScore = 0;
  }

  var _questions = [
    {
      "Q": "What is 2 in to 2 ?",
      "A": [
        {"text": "five", "score": 0},
        {"text": "eight", "score": 0},
        {"text": "four", "score": 15},
        {"text": "zero", "score": 0}
      ],
      "C": "Mathematics"
    },
    {
      "Q": "Who put first step on moon?",
      "A": [
        {"text": "Niel", "score": 0},
        {"text": "Niel Armstrong", "score": 15},
        {"text": "Max weber", "score": 0},
        {"text": "jabir ibn hayyan", "score": 0}
      ],
      "C": "Science"
    },
    {
      "Q": "What is the name of the tallest mountain in the world ?",
      "A": [
        {"text": "K2 (Mount Godwin Austen) Karakoram", "score": 0},
        {"text": "Himalayas", "score": 0},
        {"text": "Manaslu", "score": 0},
        {"text": "Mount everest", "score": 15}
      ],
      "C": "Geography"
    },
    {
      "Q": "Which language has the more native speakers ?",
      "A": [
        {"text": "English", "score": 15},
        {"text": "Spanish", "score": 0},
        {"text": "Turkish", "score": 0},
        {"text": "Urdu", "score": 0}
      ],
      "C": "Gerenal Knowledge"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 33, 10, 37),
                centerTitle: true,
                title: Text("Quiz App")),
            body: Column(
              children: [
                _questions.length > _questionsIndex
                    ? Quiz(
                        questions: _questions,
                        questionsIndex: _questionsIndex,
                        questionHandler: _questionHandler)
                    : Result(totalScore, backHandler)
              ],
            )));
  }
}
