import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/widgets/buttons/button.dart';
import 'package:envia2godelivery/widgets/backgrounds/background1.dart';
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
       alignment: Alignment.center,
      children: [
        Background1(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
					children: [
            Container(
              height: height * 0.1,
              width: width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                    image: AssetImage('images/logo PNG.png'),
                    fit: BoxFit.cover),
              ),
            ),
						SizedBox(height: 30),
						ButtonWidget1(
							color: getColor()[100],
							text: 'Regístrate',
							onClicked: ()
							{
								Navigator.pushNamed(context, 'register');
							}
						),
						SizedBox(height: 25),
						ButtonWidget1(
							color: getColor()[50],
							text: 'Iniciar Sesión',
							onClicked: ()
							{
                	Navigator.pushNamed(context, 'sign_in');
							}
						)
					]
				)
      ],
    );
  }
}
