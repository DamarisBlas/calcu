
//import 'dart:html';

//import 'package:calcu/widgets/my_button.dart';

import 'package:flutter/material.dart';
//import 'package:math_expressions/math_expressions.dart';

import 'bloc/bloc_provider.dart';
import 'bloc/calculator_bloc.dart';
//import 'widgets/my_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return BlocProvider(bloc: CalaculatorBloc(),
    child: MaterialApp(
      title: 'Flutter Calculadora',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    )
    );
   
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 var userInput='';
 var answer='';
 final List<String> buttons = [
    'C',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];


  @override
  Widget build(BuildContext context) {
 final calculatorBloc=BlocProvider.of<CalaculatorBloc>(context);
    return Scaffold(
      appBar: AppBar(

        title: const Text("Calculator"),
      ),
      backgroundColor: Colors.white38,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[//la calculadora tiene dos textos
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userInput,
                        style: const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.centerRight,
                      child: _buildAnswerText(calculatorBloc),
                    )
                  ]),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    
                    return MyButton(
                      buttontapped: (){
                        print("boton pressionado");
                        //final calculatorBloc=BlocProvider.of<CalaculatorBloc>(context);
                       // print("bloc tupe $calculatorBloc");
                        calculatorBloc.pressKeySink.add(index);
                      },
                        buttonText: buttons[index],
                        color: Colors.blue[50],
                        textColor: Colors.black,
                    );
                  
                  }


                  ), // GridView.builder
            ),
          ),
        ],
      ),
    
 


 
    );
  }
  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }
  
 Widget _buildAnswerText(CalaculatorBloc bloc) {
return StreamBuilder<String?>(
  stream: bloc.calculatorStream,
  builder: (context, snapshot) {
    print("En streamBuilder $snapshot.data");
    var answerText ="0";
    if(snapshot.data != null){
      answerText= snapshot.data.toString();
    }
    return Text(
                   answerText,
                  style: const TextStyle(
                    fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
    );
  },
);
    
  }

 




}
