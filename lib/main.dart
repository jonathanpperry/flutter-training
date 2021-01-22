import 'package:flutter/material.dart';

void main() => runApp(PersonalityQuizApp());

class PersonalityQuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PersonalityQuizAppState();
  }
}

class PersonalityQuizAppState extends State<PersonalityQuizApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
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
          title: Text("My First App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(child: Text("Answer 1"), onPressed: answerQuestion),
            ElevatedButton(child: Text("Answer 2"), onPressed: answerQuestion),
            ElevatedButton(child: Text("Answer 3"), onPressed: answerQuestion)
          ],
        ),
      ),
    );
  }
}
