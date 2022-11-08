// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import 'package:flutter_assignment/text_control.dart';
import 'package:flutter_assignment/text.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _textList = const ['Text 1', 'Text 2', 'Text 3', 'Text 4', 'Text 5'];
  var _textIndex = 0;

  void _changeText() {
    setState(() {
      _textIndex++;
      if (_textIndex == _textList.length) {
        _textIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Assignment'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(_textList[_textIndex]),
              TextControl(_changeText),
            ],
          ),
        ),
      ),
    );
  }
}
