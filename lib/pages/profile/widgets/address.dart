import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  String text;
  Address({@required this.text});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);
    
    return Container(
      margin: EdgeInsets.only(bottom: height * 0.01),
              height: height * 0.10,
              width: width * 1,
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.red),
                  boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: getColor()[300],
                          offset: Offset(0.2, 4),
                          spreadRadius: 2.0,
                          blurRadius: 2.0,)
                    ],
                color: getColor()[400]
              ),
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(this.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat-ExtraLight',
                        fontSize: responsive.ip(1.8))),
                  ],
                ),
            );
  }
}