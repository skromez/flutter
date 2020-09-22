import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  static const _questions = [
    {
      'questionText': 'Кто самый умный программист',
      'answers': [
        {'text': 'Гоша', 'score': 10},
        {'text': 'Лиза', 'score': 5},
        {'text': 'Коля', 'score': 3},
        {'text': 'Кофе машина', 'score': 0},
      ]
    },
    {
      'questionText': 'Самый лучший ПМ',
      'answers': [
        {'text': 'Саша Соловьев', 'score': 10},
        {'text': 'Антон Брилев', 'score': 5},
        {'text': 'Лена Татаринова', 'score': 3},
        {'text': 'Сергей Галуза', 'score': 0},
      ]
    },
    {
      'questionText': 'Самый сложный вопрос человечества',
      'answers': [
        {'text': 'if (array.length) что выдаст???', 'score': 10},
        {'text': 'mapDispatchToProps', 'score': 5},
        {'text': 'Что такое ООП', 'score': 3},
        {'text': 'Папей гавна', 'score': 0},
      ]
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
