import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PayMethod extends StatelessWidget {
  String name;
  String lastNumbers;
  PayMethod({@required this.name, @required this.lastNumbers});

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
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: height * 0.01),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                         padding: EdgeInsets.all(height * 0.0068),
                        child: SvgPicture.asset(
                                'images/Icono_Tarjeta_de_Credito.svg', 
                                color: getColor()[600],
                                fit: BoxFit.contain, height: width * 0.26, 
                                width: width * 0.2),
                      ),
                    Positioned(
                      top: height * 0.026,
                      left: width * 0.22,
                      child: Container(
                        height: width * 0.13,
                        width: width * 0.13,
                        decoration: BoxDecoration(
                          color: getColor()[500],
                          borderRadius: BorderRadius.circular(2000)
                        ),
                        child:  Center(
                          child: Text(lastNumbers,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat-Bold',
                                  fontSize: responsive.ip(1.7)
                              )
                            ),
                        ),
                      ),
                    )
                    ],
                  ),
                ),
                Text(this.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat-ExtraLight',
                          fontSize: responsive.ip(1.8)))
                  ,SizedBox(width: width * 0.33)
                ],
              ),
            );
  }
}