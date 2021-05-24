import 'package:flutter/material.dart';
import 'widgets/button.dart';
import 'routes.dart';

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
      //home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage(/*{Key key, this.title}*/);// : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
{

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: SafeArea(
			child: Container(
				padding: EdgeInsets.only(top: 80, right: 10, bottom:10, left: 10),
				decoration: BoxDecoration(
					image: DecorationImage(
						image: AssetImage('images/Ondas_layout_1.png'),
						fit: BoxFit.fitWidth,
						alignment: Alignment.topLeft
					),
				),
				child: ListView(
					children: [
						SizedBox(height: 20),
						Center(
							child: RichText(
								text: TextSpan(
									text: 'Envia',
									style: TextStyle(
									  //Azul
									  color: Color.fromRGBO(60, 160, 52, 1),
									  fontSize: 75,
									  fontWeight: FontWeight.w800,
									  fontFamily: 'Montserrat',
									),
									children: <TextSpan>[
									  TextSpan(
										text: '2Go',
										style: TextStyle(
										  //verde
										  color: Color.fromRGBO(36, 84, 201, 1),
										  fontSize: 75,
										  fontWeight: FontWeight.w900,
										  fontFamily: 'Montserrat',
										),
									  )
									],
								),
							)
						),
						SizedBox(height: 30),
						ButtonWidget(
							color: Color(0xff3ea927),
							text: 'Registrate',
							onClicked: ()
							{
								Navigator.pushNamed(context, '/register-intro');
							}
						),
						SizedBox(height: 25),
						ButtonWidget(
							color: Theme.of(context).primaryColor,
							text: 'Iniciar Sesion',
							onClicked: ()
							{
							}
						)
					]
				)
		  )
        ),
      /*
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      */
    );
  }
}
