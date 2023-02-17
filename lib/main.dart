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
  var _questionsIndex = 0;

  void _answerQuetion() {
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
