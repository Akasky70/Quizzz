import '../utils/quiz.dart';
import '../utils/question.dart';

import '../ui/answer-button.dart';

import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          // this is our main page
          children: <Widget>[
            // true button
            new AnswerButton(true, () => print("You answered true.")),
            new Material(
              color: Colors.white,
              child: new Padding(
                  padding: new EdgeInsets.symmetric(vertical: 20.0),
                  child: new Center(
                    child: new Text("Everything is fucked."),
                  )),
            ),
            // false button
            new AnswerButton(false, () => print("You answered false."))
          ],
        ),
      ],
    );
  }
}
