import 'dart:async';

import 'package:rxdart/rxdart.dart';

class GeneralBloc  {
  var _heightController = BehaviorSubject<double>();
  var _widthController = BehaviorSubject<double>();

 
  //  INSERTAR VALORES AL STREAM
  Function(double) get changeHeigh => _heightController.sink.add;
  Function(double) get changeWidth => _widthController.sink.add;
  

  // OBTENER LOS VALORES
  double get heigh => _heightController.value;
  double get width => _widthController.value;


// STREAM
  Stream<double> get heightStream => _heightController.stream;
  Stream<double> get widthStream => _widthController.stream;
  
  dispose() {
    _heightController?.close();
    _widthController?.close();
  }

  streamNull() {
    _heightController = BehaviorSubject<double>();
    _widthController = BehaviorSubject<double>();
  }
}

GeneralBloc blocGeneral = GeneralBloc();