import 'package:envia2godelivery/blocs/bloc_general.dart';
import 'package:envia2godelivery/resource/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
  {
	  var blueColor = MaterialColor(0xff213479,
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
    return MaterialApp(
      title: 'Envia2GO Delivery',
      theme: ThemeData(
		backgroundColor: Colors.white,
        primarySwatch: blueColor,
        textTheme: TextTheme(body1: TextStyle(color: blueColor, fontSize: 14))
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_out',
      routes: routes(),
    );
  }
}

