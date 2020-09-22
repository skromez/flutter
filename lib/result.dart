import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetQuiz;

  Result(this.result, this.resetQuiz);

  String get resultPhase {
    String resultText = 'Ты как кто сломал мне приложуху я хз как мне похуй';
    if (result <= 8) {
      resultText = 'Ты Сергей Галуза СЕО ПЛАНЕТЫ ЗЕМЛЯ';
    } else if (result <= 12) {
      var resultText = 'Ты Дима Гномиков';
    } else if (result <= 16) {
      resultText = 'Ты Vindriks ака Витя ака Винтик';
    } else {
      resultText = 'Юрий Аралкиннкаффолол';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(resultPhase,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              )),
          RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            child: Text('УДАЛИТЬ ПЛАНЕТУ'),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
