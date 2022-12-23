import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;

  var mixedList = [1, 'list'];

  void answerQues() {
    setState(() {
      questionIndex = (questionIndex + 1).remainder(3);
    });

    print('answerQuestion called');
    print(mixedList[1]);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'What\'s your favorite color',
        'answers': ['RED','YELLOW','BLUE','GREEN'],
      },
      {
        'question': 'What\'s India\'s capital',
        'answers': ['New Delhi','Bangalore','Chenai','Kolkata'],
      },
      {
        'question': 'What\'s Karnataka\'s capital',
        'answers': ['New Delhi','Bangalore','Chenai','Mumbai','Kolkata'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My first APP'),
          ),
          body: Column(
            children: [
              // Text(questions[questionIndex]),
              Question(questions[questionIndex]['question']),
              ...(questions[questionIndex]['answers'] as List<String>).map((answer){
                return Answer(answer,answerQues);
              }).toList(),
            //  Answer(answerQues),
              
            ],
          )),
    );
  }
}
