import 'package:envia2godelivery/blocs/bloc_general.dart';
import 'package:envia2godelivery/resource/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Background1 extends StatelessWidget {
  AnimationController rotationController;


  @override
  Widget build(BuildContext context) {
      
    blocGeneral.changeHeigh(MediaQuery.of(context).size.height);
    blocGeneral.changeWidth(MediaQuery.of(context).size.width);

    return Scaffold(
      backgroundColor: getColor()[400],
      body: SafeArea(child: 
      Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Ondas_layout_2.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topLeft
              ),
            ),)),
    );
  }
}