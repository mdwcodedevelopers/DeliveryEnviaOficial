import 'package:animate_do/animate_do.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalSimple extends StatelessWidget {
  String legend;
  String textButton;
  Function onPress;
  ModalSimple({@required this.legend, @required this.textButton, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);
    
    return ElasticIn(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                height: height * 0.16,
                width: width * 0.7,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(225, 53, 189, 1),
                  borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: Color.fromRGBO(225, 53, 189, 1),
                        child: Text('${this.legend}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'MontserratRegular',
                              fontSize: responsive.ip(2))),
                      ),
                      SizedBox(height: height * 0.01,),
                      Material(
                        color: Color.fromRGBO(225, 53, 189, 1),
                        child: Text('${this.textButton}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat-Bold',
                              fontSize: responsive.ip(2.2))),
                      ),
                    ],
                  ),
            ),
          ),
          Positioned(
            top: height * 0.01,
            right: height * 0.01,
            child: GestureDetector(
              onTap: () => onPress(),
              child: Container(
                height: width * 0.06,
                    width: width * 0.06,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/exito.png'),
                      fit: BoxFit.contain,
                      alignment: Alignment.topLeft
                    ),
              ),),
            ),
          )
        ],
      ),
    );
  }
}