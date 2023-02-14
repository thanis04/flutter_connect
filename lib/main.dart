import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;

  void _answerQuetion() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answer': ['Black', 'Red', 'Blue', 'White']
      },
      {
        'questionText': 'What\'s your favvorite animale?',
        'answer': ['Rabbit', 'Lion', 'Tiger', 'Elephant']
      },
      {
        'questionText': 'Who\'s your favvorite instructor?',
        'answer': ['Knox', 'Mohamed', 'Rasmi', 'Thanis']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Begin'),
        ),
        body: Column(
          children: [
            Question(questions[_questionsIndex]),
            Answer(_answerQuetion),
            Answer(_answerQuetion),
            Answer(_answerQuetion),
          ],
        ),
      ),
    );
  }
}
