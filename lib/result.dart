import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore; 
  final Function resetHandler; 

  Result(this.resultScore, this.resetHandler); 

  String get resultPhrase {

    String resultText; 

    if(resultScore <= 8){
      resultText = 'Eres asombroso'; 
    } else if (resultScore <= 12) {
      resultText = 'Bastante impresionante'; 
    } else if (resultScore <= 16){
      resultText = 'Eres raro'; 
    } else {
      resultText = 'Que mal resultado'; 
    }

    return resultText; 
  }

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Column(
                    children: <Widget>[
                      Text(resultPhrase, 
                        style: TextStyle(fontSize:  36, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center, 
                      ),
                      TextButton(
                        child: Text('Reiniciar Quizz'),
                        onPressed: resetHandler,
                        style: TextButton.styleFrom(
                          primary: Colors.blue
                        ),
                      )
                    ], 
                  )
      );
  }
}