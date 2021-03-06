
import 'package:flutter/material.dart';

Map<int, Color> getColor(){
   
		return <int, Color>{
			0: Color.fromRGBO(255, 255, 255, 0), // transparente
			50: Color(0xff213479), // azul
			100: Color.fromRGBO(60, 171, 52, 1), // verde
			200: Color.fromRGBO(171, 0, 225, 1), // pulpura
			300: Color.fromRGBO(236, 236, 236, 1), // gris
			400: Color.fromRGBO(255, 255, 255, 1), // Blanco de fondo
			500: Color.fromRGBO(255, 161, 0, 1), // Amarillo mostaza
			600: Color.fromRGBO(171, 0, 255, 1), // Pulpura
			700: Color.fromRGBO(255, 226, 48, 1), // amarillo
			800: Color.fromRGBO(249, 53, 189, 1), // rosado
			900: Color(0xff213479),
		};
}


MaterialColor blueColor(){
  return MaterialColor(0xff213479,
      <int, Color>{
        50: Color(0xff213479),
        100: Color(0xff213479),
        200: Color(0xff213479),
        300: Color(0xff213479),
        400: Color(0xff213479),
        500: Color(0xff213479),
        600: Color(0xff213479),
        700: Color(0xff213479),
        800: Color(0xff213479),
        900: Color(0xff213479),
      }
    );
  }


