import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.answer,this.callHandler);

  final VoidCallback callHandler;
   final String answer;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
         ),
        
        onPressed: callHandler,
        child: Text(answer),
      ),
    );
  }
}
