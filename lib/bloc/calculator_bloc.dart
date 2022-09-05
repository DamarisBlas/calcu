import 'dart:async';

import 'package:calcu/bl/calculator_bl.dart';

import 'bloc.dart';

class CalaculatorBloc  implements Bloc{

  final _calculatorBl = CalculatorBl();
  final _calculatorController = StreamController<int>();

  Sink <int?> get pressKeySink => _calculatorController.sink;
 //pa que se inicialize despues
  late Stream <String?> calculatorStream;

CalaculatorBloc(){

    calculatorStream =_calculatorController.stream.asyncMap((key) 
  //  => _calculatorBl.onKeyPress(key));
  {
    

    return _calculatorBl.onKeyPress(key);
  });

}

 
  @override
  void dispose() {
   _calculatorController.close();
   

  }
}