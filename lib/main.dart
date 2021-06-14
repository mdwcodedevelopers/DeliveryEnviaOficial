import 'package:envia2godelivery/blocs/provider.dart';
import 'package:envia2godelivery/resource/colors.dart';
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
    return ProviderApp(
      child: MaterialApp(
        title: 'Envia2GO Delivery',
        theme: ThemeData(
        // fontFamily: 'Montserrat',
          backgroundColor: Colors.white,
          primarySwatch: blueColor(),
          textTheme: TextTheme(body1: TextStyle(color: blueColor(), fontSize: 14))
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: 'home_out',
        routes: routes(),
      ),
    );
  }
}

