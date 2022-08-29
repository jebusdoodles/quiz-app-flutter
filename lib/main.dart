import 'package:flutter/material.dart'; 

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return _MyAppState(); 

  }

}

class _MyAppState extends State<MyApp>{

  final _questions = const [
      {'questionText': '¿Cuál es tu comida favorita?', 
      'answers': [
        {'text': 'Chilaquiles', 'score': 5}, 
        {'text': 'Tacos', 'score': 15}, 
        {'text': 'Gorditas', 'score': 5}, 
        {'text': 'Pizza', 'score': 10}
      ]},
      {'questionText': '¿Cuál es tu mascota favorita?', 
      'answers': [
        {'text': 'Newton', 'score': 15}, 
        {'text': 'Lisa', 'score' : 10}, 
        {'text': 'Sumi', 'score': 15}, 
        {'text': 'Babona', 'score': 0}
      ]},
      {'questionText': '¿Cuál es tu libro favorito?', 
      'answers': [
        {'text': 'Los Miserables', 'score': 15}, 
        {'text': 'El señor de los anillos', 'score': 10}, 
        {'text': 'Anna Kerenina', 'score': 10}, 
        {'text': 'Los hermanos Karamazov', 'score': 5}
      ]},
    ]; 

  var _questionIndex = 0;
  var _totalScore = 0;  

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0; 
      _totalScore = 0; 
    });
  }

  void _answerQuestion(int score){

    _totalScore += score; 

    setState((){
      _questionIndex = _questionIndex + 1; 
    }); 

    print(_questionIndex);

    if(_questionIndex < _questions.length){
      print('Tenemos más preguntas'); 
    } else {
      print('No hay más preguntas'); 
    }

  }
  
  @override
  Widget build(BuildContext context){

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Mi primera aplicación'),
      ),
      body: _questionIndex < _questions.length 
        ?  Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          ) 
        : Result(_totalScore, _resetQuiz)
      ),
    ); 
  }
}