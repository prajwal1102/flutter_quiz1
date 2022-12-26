import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_complete_guide/question.dart';
import './main.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({super.key});

   final List<Map<String,Object>> questions;
  final Function answerQues;
  final int questionIndex;

  Quiz({this.answerQues,this.questions, this.questionIndex});


  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    // Text(questions[questionIndex]),
                    Question(questions[questionIndex]['question']),
                    ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
                        .map((answer) {
              return Answer(answer['text'],()=> answerQues(answer['score']));
              //return Answer(answer['text'],answerQues);
                    }).toList(),
                    //  Answer(answerQues),
                  ],
                );
  }
}