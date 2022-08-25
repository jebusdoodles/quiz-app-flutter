import 'package:flutter/material.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return MyAppState(); 

  }

}

class MyAppState extends State<MyApp>{
  var questionIndex = 0; 

  void answerQuestion(){

    setState((){
      questionIndex = questionIndex + 1; 
    }); 
    
    print(questionIndex);

  }
  
  @override
  Widget build(BuildContext context){

    var questions = [
      '¿Cuál es tu color favorito?', 
      '¿Cuál es tu animal favorito?',
    ]; 

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Mi primera aplicación'),
      ),
      body: Column(children: [
        Text(
          questions[questionIndex]
        ),
        ElevatedButton(
          child: Text('Respuesta 1'), 
          onPressed: answerQuestion,
        ),
        ElevatedButton(
          child: Text('Respuesta 2'), 
          onPressed: () => print('Respuesta seleccionada'),
        ),
        ElevatedButton(
          child: Text('Respuesta 3'), 
          onPressed: answerQuestion,
        ), 
      ]),
    ),); 
  }
}