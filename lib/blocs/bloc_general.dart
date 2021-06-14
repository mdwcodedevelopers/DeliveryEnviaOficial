import 'dart:async';

import 'package:rxdart/rxdart.dart';

class GeneralBloc  {
  var _heightController = BehaviorSubject<double>();
  var _widthController = BehaviorSubject<double>();
  var _openModalController = BehaviorSubject<bool>();

 
  //  INSERTAR VALORES AL STREAM
  Function(double) get changeHeigh => _heightController.sink.add;
  Function(double) get changeWidth => _widthController.sink.add;
  Function(bool) get changeOpenModal => _openModalController.sink.add;
  

  // OBTENER LOS VALORES
  double get heigh => _heightController.value;
  double get width => _widthController.value;
  bool get openModal => _openModalController.value;


// STREAM
  Stream<double> get heightStream => _heightController.stream;
  Stream<double> get widthStream => _widthController.stream;
  Stream<bool> get openModalStream => _openModalController.stream;
  
  dispose() {
    _heightController?.close();
    _widthController?.close();
    _openModalController?.close();
  }

  streamNull() {
    _heightController = BehaviorSubject<double>();
    _widthController = BehaviorSubject<double>();
    _openModalController = BehaviorSubject<bool>();
  }
}

GeneralBloc blocGeneral = GeneralBloc();