import 'package:flutter/material.dart';
import 'main.dart';
import 'pages/register/intro.dart';
import 'pages/register/form.dart';

final appRoutes = <String, WidgetBuilder>{
	'/': (BuildContext context) => MyHomePage(), 
	'/register-intro': (BuildContext context) => RegisterIntro(),
	'/register-form': (BuildContext context) => RegisterForm(),
};
