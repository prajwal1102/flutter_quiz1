import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);
  String resultText;
  String get resultPhrase {
    if (resultScore < 10) {
      resultText = 'All wrong';
    } else if (resultScore < 20) {
      resultText = 'One correct';
    } else if (resultScore < 30) {
      resultText = 'Two correct';
    } else {
      resultText = 'You are a big Jana Mari';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Quiz is complete and the score is $resultScore and $resultPhrase',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.orange),
          foregroundColor: MaterialStateProperty.all(Colors.white),
         ),
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
