// Packages
import 'package:flutter/material.dart';
// Own files
import './question.dart';

void main() => runApp(PersonalityQuizApp());

class PersonalityQuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PersonalityQuizAppState();
  }
}

class _PersonalityQuizAppState extends State<PersonalityQuizApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personality Quiz!"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(child: Text("Answer 1"), onPressed: _answerQuestion),
            ElevatedButton(child: Text("Answer 2"), onPressed: _answerQuestion),
            ElevatedButton(child: Text("Answer 3"), onPressed: _answerQuestion)
          ],
        ),
      ),
    );
  }
}
