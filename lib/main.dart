import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;

  var mixedList = [1, 'list'];
  var _totalscore =0;

void resetTest(){
setState(() {
  questionIndex = 0;
  _totalscore=0;
});

}

  void answerQues(int score) {

    _totalscore += score;
    setState(() {
      questionIndex = (questionIndex + 1);
    });

    print('answerQuestion called');
    print(mixedList[1]);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'What\'s is the color of the sky',
        'answers': [
          {'text': 'RED', 'score': 0},
          {'text': 'YELLOW', 'score': 0},
          {'text': 'BLUE', 'score': 10},
          {'text': 'GREEN', 'score': 0},
        ],
      },
      {
        'question': 'What\'s India\'s capital',
        'answers': [
          {'text': 'New Delhi', 'score': 10},
          {'text': 'Bangalore', 'score': 0},
          {'text': 'Chennai', 'score': 0},
          {'text': 'Kolkata', 'score': 0},
        ],
      },
      {
        'question': 'What\'s Karnataka\'s capital',
        'answers': [
        {'text': 'New Delhi', 'score': 0},
          {'text': 'Bangalore', 'score': 10},
          {'text': 'Chennai', 'score': 0},
          {'text': 'Kolkata', 'score': 0},
        ],
      },
      {
        'question': 'Who wrote Jana Gana Mana',
        'answers': [
        {'text': 'Prajwal Herikudru Narayana Shetty', 'score': 0},
          {'text': 'Shreesha Shetty', 'score': 0},
          {'text': 'Anika Shetty', 'score': 0},
          {'text': 'Rabendranath Tagore', 'score': 10},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My first APP'),
            
          ),
          body: (questionIndex >= questions.length)
              ? Result(_totalscore,resetTest)
              : Quiz(
                  questions: questions,
                  questionIndex: questionIndex,
                  answerQues: answerQues,
                )),
    );
  }
}
