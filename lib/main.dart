import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_connect/quiz.dart';
import 'package:flutter_connect/result.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'Blue', 'score': 2},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favvorite animale?',
      'answer': [
        {'text': 'Rabbit', 'score': 14},
        {'text': 'Lion', 'score': 8},
        {'text': 'Tiger', 'score': 12},
        {'text': 'Elephant', 'score': 5},
      ]
    },
    {
      'questionText': 'Who\'s your favvorite instructor?',
      'answer': [
        {'text': 'Knox', 'score': 2},
        {'text': 'Mohamed', 'score': 8},
        {'text': 'John', 'score': 3},
        {'text': 'David', 'score': 1},
      ]
    },
  ];
  var _questionsIndex = 0;
  var _totalScore = 0;

  void _answerQuetion() {
    // _totalScore += score;

    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
    if (_questionsIndex < _questions.length) {
      print('We have more question');
    } else {
      print('No more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Begin'),
        ),
        body: _questionsIndex < _questions.length
            ? Quiz(
                _questions,
                _answerQuetion,
                _questionsIndex,
              )
            : Result(),
      ),
    );
  }
}
