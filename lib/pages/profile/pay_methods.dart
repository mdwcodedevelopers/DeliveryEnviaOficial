import 'package:envia2godelivery/blocs/bloc_general.dart';
import 'package:envia2godelivery/pages/profile/widgets/app_bar.dart';
import 'package:envia2godelivery/pages/profile/widgets/pay_method.dart';
import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/global.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:envia2godelivery/widgets/buttons/button2.dart';
import 'package:envia2godelivery/widgets/buttons/button3.dart';
import 'package:envia2godelivery/widgets/inputs/input2.dart';
import 'package:envia2godelivery/widgets/inputs/input3.dart';
import 'package:envia2godelivery/widgets/inputs/input4.dart';
import 'package:envia2godelivery/widgets/inputs/input_verification_code.dart';
import 'package:envia2godelivery/widgets/labels/label1.dart';
import 'package:envia2godelivery/widgets/labels/label2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PayMethods extends StatefulWidget {
  // const PayMethods({Key? key}) : super(key: key);

  @override
  State<PayMethods> createState() => _PayMethodsState();
}

class _PayMethodsState extends State<PayMethods> {
  bool tabInitial = true;
  bool viewActioSheet = false;
  bool viewAlert = false;
   
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    return Scaffold(
      backgroundColor: getColor()[400],
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    AppBarProfile(text: 'FORMAS DE PAGO',),
                    _part1(responsive, height, width),
                     SizedBox(height: height * 0.02),
                  ],
                ),
              ),
              (viewActioSheet == true) ? _actionSheet(responsive, height, width) : Container(),
              (viewAlert == true) ? _alert(responsive, height, width) : Container()
            ],
          ),
        ),
      ),
    );
  }

  _part1(Responsive responsive, double height, double width) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: height * 0.11),
              child: (tabInitial == true) ?_listpayMethoss(responsive, height, width) : _creditCard(responsive, height, width),
            ),
          ],
        ),
        _taps(responsive, height, width)
      ], 
    );
  }

  Widget _taps(Responsive responsive, double height, double width){
      return (tabInitial) ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             _buttonSelect(responsive, height, width, 'GUARDADAS'),
             _buttonNoSelect(responsive, height, width, 'INGRESAR NUEVA') 
          ],
        ) : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             _buttonNoSelect(responsive, height, width, 'GUARDADAS'),
             _buttonSelect(responsive, height, width, 'INGRESAR NUEVA') 
          ],
        );
  }

  Widget _buttonSelect(Responsive responsive, double height, double width, String text){
    return GestureDetector(
      onTap: (){
        setState(() {
          tabInitial = !tabInitial;
        });
      },
      child: Container(
        height: height * 0.1,
        width: width * 0.5,
        padding: EdgeInsets.symmetric(vertical: responsive.ip(2), horizontal: responsive.ip(3)),
        decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
                BoxShadow(
                  color: getColor()[300],
                    offset: Offset(0.0, 4),
                    spreadRadius: 2.0,
                    blurRadius: 2.0,)
              ],
          color: getColor()[400],
        ),
        child: Container(
      alignment: Alignment.center,
      width: width * 0.2,
      height: height * 0.02,
      decoration: BoxDecoration(
        color: getColor()[100],
          borderRadius: BorderRadius.circular(30.0) 
      ),
      child: Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat-Bold',
                  fontSize: responsive.ip(1.7)
               )
             )
         )),
    );
  }

  Widget _buttonNoSelect(Responsive responsive, double height, double width, String text){
    return GestureDetector(
      onTap: (){
        setState(() {
          tabInitial = !tabInitial;
        });
      },
      child: Container(
                padding: EdgeInsets.symmetric(vertical: responsive.ip(2), horizontal: responsive.ip(2.5)),
                height: height * 0.1,
                width: width * 0.5,
                decoration: BoxDecoration(
                  color: getColor()[400]
                ),
                child: Container(
              alignment: Alignment.center,
              width: width * 0.27,
              height: height * 0.02,
              decoration: BoxDecoration(
                color: getColor()[400],
                border: Border.all(color: getColor()[100]),
                  borderRadius: BorderRadius.circular(30.0) 
              ),
              child: Text(text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: getColor()[100],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat-Bold',
                          fontSize: responsive.ip(1.8)
                       )
                     )
            ),
        ),
    );
  }

  Widget _listpayMethoss(Responsive responsive, double height, double width){
  return SingleChildScrollView(
            child: Column(
              children: [
                PayMethod(name: 'Sofy Cruz', lastNumbers: '6689'),
                PayMethod(name: 'Juan Silva',lastNumbers: '0981'),
              ],
            ),
          );
  }

  Widget _creditCard(Responsive responsive, double height, double width){
      return Container(
        width: width,
        child: Column(
          children: [
            Container(  // Imagen de la terjeta
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height * 0.03),
                  Container(
                      child: SvgPicture.asset(
                        'images/Icono_Tarjeta_de_Credito_Codigo_CVC.svg', 
                        fit: BoxFit.contain, height: width * 0.29, 
                        width: width * 0.29)
                  ),
                  SizedBox(height: height * 0.01),
                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         SvgPicture.asset(
                          'images/Icono_Master_Card.svg', 
                          fit: BoxFit.contain, height: width * 0.13, 
                          width: width * 0.13),
                          SizedBox(width: width * 0.05),
                         SvgPicture.asset(
                          'images/Icono_Visa.svg', 
                          fit: BoxFit.contain, height: width * 0.13, 
                          width: width * 0.13)
                       ],
                     ),
                   )
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Container(
              margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardPage(width)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Label1(colorbackground: getColor()[50], text: 'Titular de la trajeta'),
                  SizedBox(height: height * 0.015),
                  Input2(type: TextInputType.text),
                  SizedBox(height: height * 0.015),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Label1(colorbackground: getColor()[50], text: 'Número de la tarjeta'),
                          SizedBox(height: height * 0.015),
                          Input3(type: TextInputType.number)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Label2(colorbackground: getColor()[50], text: 'Vcto'),
                          SizedBox(height: height * 0.015),
                          Input4(type: TextInputType.datetime)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: RichText(
                textAlign: TextAlign.center,
                text: new TextSpan(
                  children: [
                    new TextSpan(
                      text: 'La tarjeta es guardada exclusivamente en el dispositivo de forma segura. Dicha información esta sujeta a nuestras políticas y uso.',
                      style: TextStyle(
                        fontFamily: "Montserrat-Light",
                        fontSize: responsive.ip(1.65),
                        color: getColor()[50]
                        ),
                    ),
                    new TextSpan(
                      text: ' Leer más',
                      style: new TextStyle(
                        fontFamily: "Montserrat-Bold",
                        decoration: TextDecoration.underline,
                        fontSize: responsive.ip(1.65),
                        color: getColor()[50]
                        ),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {print('Mostrar más contenido');}
                    ),
                  ],
                ),
              )
            ),
            SizedBox(height: height * 0.03),
            Container(
              height: height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Label1(colorbackground: getColor()[50], text: 'Nombre de la trajeta'),
                      SizedBox(height: height * 0.015),
                      Input2(type: TextInputType.text),
                    ],
                  ),
                  SizedBox(height: height * 0.05),
                  ButtonWidget2(text: 'Continuar', onClicked: (){ 
                    setState(() {
                      viewActioSheet = true;
                    });
                  }, color: getColor()[100])
                ],
              ),
            ),

          ],
        ),
      );
  }

  Widget _actionSheet(Responsive responsive, double height, double width){
    return  Positioned(
            bottom: 0,
            child: Container(
              width: width,
              height: height * 0.7,
              decoration: BoxDecoration(
                color: getColor()[300],
                border: Border.all(style: BorderStyle.solid,color: Color.fromRGBO(193, 193, 193, 1), width: 3),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: width * 0.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'images/Icono_Checking_en_circulo_pequeño.svg', 
                        fit: BoxFit.contain, height: width * 0.15, 
                        width: width * 0.15),
                        SizedBox(width: width * 0.05,),
                    ],
                  ),
                  Container(
                      child: SvgPicture.asset(
                        'images/Icono_Tarjeta_de_Credito_Codigo_CVC.svg', 
                        fit: BoxFit.contain, height: width * 0.18, 
                        width: width * 0.18)
                  ),
                  SizedBox(height: height * 0.05),
                  VerificationCode(count: 3),
                  SizedBox(height: height * 0.05),
                  Text('Ingresa el código CVC',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: getColor()[50],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat-Bold',
                          fontSize: responsive.ip(2.7))),
                  SizedBox(height: height * 0.05),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.08),
                    child: Text('Para la autorización del uso de tu tarjeta ****7489 debes digitar los últimos 3 digitos del código que encontrarás al revés de tu tarjeta',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: getColor()[50],
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat-Light",
                            fontSize: responsive.ip(1.65))),
                  ),
                  SizedBox(height: height * 0.05),
                  ButtonWidget2(text: 'Continuar', onClicked: (){ 
                    setState(() {
                      viewActioSheet = false;
                      viewAlert = true;
                    });
                   }, color: getColor()[100])
                ],
              ),
            ),
          );
  }

  Widget _alert(Responsive responsive, double height, double width){
      return  Positioned(
              bottom: height * 0.1,
              child: Container(
                width: width,
                height: height * 0.45,
                decoration: BoxDecoration(
                  color: getColor()[300],
                  border: Border.all(style: BorderStyle.solid,color: Color.fromRGBO(193, 193, 193, 1), width: 3),
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: width * 0.05,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'images/Icono_Checking_en_circulo_pequeño.svg', 
                          fit: BoxFit.contain, height: width * 0.15, 
                          width: width * 0.15),
                          SizedBox(width: width * 0.05,),
                      ],
                    ),
                    Container(
                        child: SvgPicture.asset(
                          'images/Icono_Tarjeta_de_Credito_Codigo_CVC.svg', 
                          fit: BoxFit.contain, height: width * 0.18, 
                          width: width * 0.18)
                    ),
                    SizedBox(height: height * 0.02),
                    Text('Rargeta guardada con éxito',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: getColor()[50],
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat-Bold',
                            fontSize: responsive.ip(2.7))),
                    SizedBox(height: height * 0.02),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.08),
                      child: Text('Tú tarjeta ha sido registrada satisfactoriamente',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: getColor()[50],
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat-Light",
                              fontSize: responsive.ip(1.65))),
                    ),
                    SizedBox(height: height * 0.05),
                    ButtonWidget3(text: 'Ok', onClicked: (){ 
                      setState(() {
                        viewAlert = false;
                      });
                    }, color: getColor()[100])
                  ],
                ),
              ),
            );
  }


}