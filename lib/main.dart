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
        'Chilaquiles', 'Tacos', 'Gorditas', 'Pizza'
      ]},
      {'questionText': '¿Cuál es tu mascota favorita?', 'answers': [
        'Newton', 'Lisa', 'Sumi', 'Babona'
      ]},
      {'questionText': '¿Cuál es tu libro favorito?', 'answers': [
        'Los Miserables', 'El señor de los anillos', 'Anna Kerenina', 'Los hermanos Karamazov'
      ]},
    ]; 

  var _questionIndex = 0; 

  void _answerQuestion(){

    setState((){
      _questionIndex = _questionIndex + 1; 
    }); 

    print(_questionIndex);

    if(_questionIndex < _questions.length){
      print('Tenemos más preguntas'); 
    } else {
      print('No hay más datos'); 
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
        : Result(),
    ),); 
  }
}