import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import './question.dart';

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
      'What\'s your favorite color?',
      'What\'s your favvorite animale?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Begin'),
        ),
        body: Column(
          children: [
            Question(questions[_questionsIndex]),
            ElevatedButton(child: Text('Answer 1'), onPressed: _answerQuetion),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () {
                print('Answer choosen');
              },
            ),
            ElevatedButton(child: Text('Answer 2'), onPressed: _answerQuetion),
          ],
        ),
      ),
    );
  }
}
