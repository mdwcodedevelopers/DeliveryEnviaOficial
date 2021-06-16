import 'package:envia2godelivery/resource/responsive.dart';
import 'package:flutter/material.dart';

class LabelLarge extends StatelessWidget {
  String text;
  Color colorbackground;
  LabelLarge({@required this.text, @required this.colorbackground});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    
    return Material(
      type: MaterialType.transparency,
      child: Container(
                alignment: Alignment.center,
                width: width * 0.33,
                height: height * 0.05,
                decoration: BoxDecoration(
                  color: this.colorbackground,
                   borderRadius: BorderRadius.circular(30.0) 
                ),
                child: Text('${this.text}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat-Bold',
                            fontSize: responsive.ip(1.8)))),
    );
      
  }
}