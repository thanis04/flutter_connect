import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String get resultPhase {
    return 'You did it!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          BackButton()
        ],
      ),
    );
  }
}
