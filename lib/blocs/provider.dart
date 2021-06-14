import 'package:flutter/material.dart';


class ProviderApp extends InheritedWidget {
  static ProviderApp _instancia;

  factory ProviderApp({Key key, Widget child}) {
    if (_instancia == null) {
      _instancia = new ProviderApp._internal(
        key: key,
        child: child,
      );
    }
    return _instancia;
  }

  ProviderApp._internal({Key key, Widget child}) : super(key: key, child: child);

  // final loginBloc = LoginBloc();


  // Provider({Key key, Widget child}) : super(key: key, child: child);

  // AL IMPLEMENTARSE VA A NOTIFICAR A TODO SU HIJOS
  // Busca en el "context" (en el árbol de Widgets) un elemento de tipo LoginBloc
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  // *****************************************************

  // static LoginBloc of(BuildContext context) {
  //   return context.dependOnInheritedWidgetOfExactType<ProviderApp>().loginBloc;
  // }

  
}