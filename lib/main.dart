import 'package:flutter/material.dart'; 
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return _MyAppState(); 

  }

}

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0; 

  void _answerQuestion(){

    setState((){
      _questionIndex = _questionIndex + 1; 
    }); 

    print(_questionIndex);

  }
  
  @override
  Widget build(BuildContext context){

    const questions = [
      {'questionText': '¿Cuál es tu comida favorita?', 'answers': [
        'Chilaquiles', 'Tacos', 'Gorditas', 'Pizza'
      ]},
      {'questionText': '¿Cuál es tu mascota favorita?', 'answers': [
        'Newton', 'Lisa', 'Sumi', 'Babona'
      ]},
      {'questionText': '¿Cuál es tu libro favorito?', 'answers': [
        'Los Miserables', 'El señor de los anillos', 'Anna Kerenina', 'Los hermanos Karamazov'
      ]},
    ]; 

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Mi primera aplicación'),
      ),
      body: Column(
        children: [
          Question(
            questions[_questionIndex]['questionText'],
          ),
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion, answer); 
          }).toList()
        ]
      ),
    ),); 
  }
}