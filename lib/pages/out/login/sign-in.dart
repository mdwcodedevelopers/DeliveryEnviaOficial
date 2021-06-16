import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/global.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:envia2godelivery/widgets/backgrounds/backgroung2.dart';
import 'package:envia2godelivery/widgets/buttons/button1.dart';
import 'package:envia2godelivery/widgets/buttons/button_back.dart';
import 'package:envia2godelivery/widgets/inputs/input1.dart';
import 'package:envia2godelivery/widgets/inputs/input_password.dart';
import 'package:envia2godelivery/widgets/labels/label_small.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SingInPage extends StatefulWidget {
  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> 
{

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    return Stack(
       alignment: Alignment.center,
      children: [
        Background2(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardPage(width)),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
					children: [
              SizedBox(height: height * 0.2),
              _part1(height, width, responsive),
              SizedBox(height: height * 0.05),
              _part2(height, width, responsive),
               SizedBox(height: height * 0.07),
              _part3(height, width, responsive),
              SizedBox(height: height * 0.07),
              _part4(height, width, responsive),
					]
				),
        )
      ],
    );
  }



  Widget _part1(double height, double width, Responsive responsive) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width * 0.1,
            child: ButtonBack(onPress: (){Navigator.pop(context);})),
          Material(
            child: Container(
              child: Text('INGRESAR DATOS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: getColor()[50],
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat-Bold',
                      fontSize: responsive.ip(2.2)))),
          ),
          Container(
            width: width * 0.1,
          )
        ],
      ),
    );
  }

  Widget _part2(double height, double width, Responsive responsive) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardContent(width)),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LabelSmall(text: 'Correo:', colorbackground: getColor()[50]),
            SizedBox(width: width*0.03),
            Input1(type: TextInputType.emailAddress)
          ],
        ),
        SizedBox(height: height*0.02),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LabelSmall(text: 'Contraseña:', colorbackground: getColor()[50]),
            SizedBox(width: width*0.03),
            InputPassword(),
          ],
        ),
        SizedBox(height: height*0.02),
          Container(
            margin: EdgeInsets.only(left: width * 0.3),
            child: CupertinoButton(
              onPressed: (){
                Navigator.pushNamed(context, 'reset_password');
              },
              padding: EdgeInsets.all(0),
              child: 
              Text.rich(
                TextSpan(
                    text: 'Olvidé mi contraseña',
                    style: TextStyle(
                      color: Color.fromRGBO(108, 191, 102, 1),
                      fontSize: responsive.ip(1.8),
                      fontFamily: 'MontserratRegular',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid
                    )),
                )
              ),
          )
      ],
    ),
  );
 }


  Widget _part3(double height, double width, Responsive responsive) {
    return Container(
      child: Column(
        children: [
          Material(
                child: Container(
                  child: Text('CONTINUAR CON TS REDES SOCIALES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: getColor()[100],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat-Bold',
                          fontSize: responsive.ip(1.8)))),
              ),
         SizedBox(height: height*0.02),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             CupertinoButton(
               padding: EdgeInsets.all(0),
               onPressed: null,
               child: SvgPicture.asset(
                  'images/Icono_Facebook.svg', 
                  fit: BoxFit.contain, height: height * 0.06, 
                  width: height * 0.06),
             ),
             SizedBox(width: width * 0.05),
             CupertinoButton(
               padding: EdgeInsets.all(0),
               onPressed: null,
               child: SvgPicture.asset(
                  'images/Icono_Google.svg', 
                  fit: BoxFit.contain, height: height * 0.06, 
                  width: height * 0.06),
             ),
           ],
         )

        ],
      ),
    );
  }


  Widget _part4(double height, double width, Responsive responsive) {
    return Container(
      child: Column(
        children: [
          ButtonWidget1(text: 'Continuar', onClicked: (){
            Navigator.pushReplacementNamed(context, 'profile');
          }, color: getColor()[100]),
         SizedBox(height: height*0.02),
         Container(
                  child: Text('Necesito ayuda',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: getColor()[100],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat-Bold',
                          fontSize: responsive.ip(1.5))))
        ],
      ),
    );
  }

}
