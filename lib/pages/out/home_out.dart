

import 'package:envia2godelivery/blocs/bloc_general.dart';
import 'package:envia2godelivery/widgets/button.dart';
import 'package:envia2godelivery/widgets/fondo1.dart';
import 'package:flutter/material.dart';

class HomeOutPage extends StatefulWidget {
  @override
  _HomeOutPageState createState() => _HomeOutPageState();
}

class _HomeOutPageState extends State<HomeOutPage> 
{

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Fondo1(),
        ListView(
					children: [
						SizedBox(height: 20),
            Container(
              width: width * 0.7,
              height: height * 0.5,
              padding: EdgeInsetsDirectional.only(top: 0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                    image: AssetImage('images/logo PNG.png'),
                    fit: BoxFit.contain),
              ),
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
      ],
    );
  }
}
