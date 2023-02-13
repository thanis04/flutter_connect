import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionsIndex = 0;

  void answerQuetion() {
    questionsIndex = questionsIndex + 1;
    print(questionsIndex);
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
            Text(questions[questionsIndex]),
            ElevatedButton(child: Text('Answer 1'), onPressed: answerQuetion),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () {
                print('Answer choosen');
              },
            ),
            ElevatedButton(child: Text('Answer 2'), onPressed: answerQuetion),
          ],
        ),
      ),
    );
  }
}
