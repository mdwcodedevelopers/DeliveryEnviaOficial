import 'dart:ui';
import 'package:envia2godelivery/blocs/bloc_general.dart';
import 'package:envia2godelivery/pages/profile/widgets/app_bar.dart';
import 'package:envia2godelivery/pages/profile/widgets/address.dart';
import 'package:envia2godelivery/resource/colors.dart';
import 'package:envia2godelivery/resource/global.dart';
import 'package:envia2godelivery/resource/responsive.dart';
import 'package:envia2godelivery/widgets/buttons/button2.dart';
import 'package:envia2godelivery/widgets/inputs/input1.dart';
import 'package:envia2godelivery/widgets/labels/label_large.dart';
import 'package:envia2godelivery/widgets/modals/modalSimple.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Addresses extends StatefulWidget {
  // const Addresses({Key? key}) : super(key: key);

  @override
  State<Addresses> createState() => _AddressesState();
}

class _AddressesState extends State<Addresses> {

  bool tabInitial = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    blocGeneral.changeOpenModal(false);
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final Responsive responsive = Responsive.of(context);

    
    return StreamBuilder(
        stream: blocGeneral.openModalStream,
        builder: (BuildContext context, AsyncSnapshot<bool> snapshopt) {
          if (snapshopt.hasData) {
            if (snapshopt.data == true) {
              return _scaffoldModalTrue(responsive, height, width);
            } else {
              return _scaffoldModalFalse(responsive, height, width);
            }
          } else if (snapshopt.hasError) {
            return Container();
          } else {
            return Container(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }



Widget _scaffoldModalTrue(Responsive responsive, double height, double width){
  return Stack(
    children: [
      Scaffold(
          backgroundColor: getColor()[400],
          body: SafeArea(
            child: Container(
              child: Column(
                        children: [
                          AppBarProfile(text: 'DIRECCIONES',),
                          _part1(responsive, height, width),
                        ],
                      ),
            )
          )
        ),
         BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(
                color: Colors.white.withOpacity(0.2),
                child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: height * 0.18, horizontal: width * 0.04),
                    child: Center(
                        child: ModalSimple(
                          legend: '¡Tudirección se guardó con éxito!',
                          textButton: 'Ok',
                          onPress: (){
                            blocGeneral.changeOpenModal(false);
                          },))),
              ),
            )
    ],
  );
}
Widget _scaffoldModalFalse(Responsive responsive, double height, double width){
  return Scaffold(
      backgroundColor: getColor()[400],
      body: SafeArea(
        child: Container(
          child: Column(
                    children: [
                      AppBarProfile(text: 'DIRECCIONES',),
                      _part1(responsive, height, width),
                    ],
                  ),
        )
      )
    );
}

// ***************


  _part1(Responsive responsive, double height, double width) {
    return Stack(
      children: [
        Column(
          children: [
            (tabInitial) ? _titleTap(responsive, height, width, 'images/Icono_Ubicación.svg', 'Tus direcciones', EdgeInsets.only(left: 0)) : _titleTap(responsive, height, width, 'images/Icono_New.svg', 'Crear dirección nueva',EdgeInsets.only(left: width * 0.02)),
            Container(
              height: height * 0.65,
              child: (tabInitial == true) ?_listAddress(responsive, height, width) : _formCreateAddress(responsive, height, width),
            ),
          ],
        ),_taps(responsive, height, width)
      ], 
    );
  }

  Widget _buttonSelect(Responsive responsive, double height, double width, String text){
    return GestureDetector(
      onTap: (){
        setState(() {
          print('object');
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

  Widget _listAddress(Responsive responsive, double height, double width){
    return SingleChildScrollView(
              child: Column(
                children: [
                  Address(text: 'Final Calle 25 de Abril Oriente Colonia el transito #1Pasaje Paris casa 21D San Marcos San Salvador'),
                  Address(text: 'Final Calle 25 de Abril Oriente Colonia el transito #1Pasaje Paris casa 21D San Marcos San Salvador'),
                ],
              ),
            );
    }

  Widget _formCreateAddress(Responsive responsive, double height, double width){
      return Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardPage(width), vertical: height * 0.04),
            child: Container(
            margin: EdgeInsets.symmetric(horizontal: resourceGlobal.marginWidthHeardContent(width)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LabelLarge(text: 'Dirección:', colorbackground: getColor()[50]),
                    SizedBox(width: width*0.03),
                    Input1(type: TextInputType.text)
                  ],
                ),
                SizedBox(height: height*0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LabelLarge(text: '# de la Casa:', colorbackground: getColor()[50]),
                    SizedBox(width: width*0.03),
                    Input1(type: TextInputType.emailAddress)
                  ],
                ),
                SizedBox(height: height*0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LabelLarge(text: 'Municipio:', colorbackground: getColor()[50]),
                    SizedBox(width: width*0.03),
                    Input1(type: TextInputType.text)
                  ],
                ),
                SizedBox(height: height*0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LabelLarge(text: 'Departamento:', colorbackground: getColor()[50]),
                    SizedBox(width: width*0.03),
                    Input1(type: TextInputType.text),
                  ],
                ),
                SizedBox(height: height*0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LabelLarge(text: 'Punto de referencia:', colorbackground: getColor()[50]),
                    SizedBox(width: width*0.03),
                    Input1(type: TextInputType.text),
                  ],
                ),
              ],
            ),
          ),
          ),
          SizedBox(height: height*0.1),
          ButtonWidget2(text: 'Guardar', onClicked: (){
              blocGeneral.changeOpenModal(true);
            }, color: getColor()[100])
        ],
      );
  }

Widget _titleTap(Responsive responsive, double height, double width, String image, String text, EdgeInsetsGeometry marginLeft){
  return Container(
            margin: EdgeInsets.only(bottom: height * 0.01),
            padding: EdgeInsets.only(bottom: height * 0.03),
            height: height * 0.20,
            width: width * 1,
            decoration: BoxDecoration(
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: marginLeft,
                      height: width * 0.12, 
                      width: width * 0.12,
                      child: SvgPicture.asset(image, 
                        fit: BoxFit.contain,
                        height: width * 0.12, 
                        width: width * 0.12,
                        color: getColor()[100]),
                    ),
                  SizedBox(width: width * 0.04),
                  Text(text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: getColor()[100],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono',
                          fontSize: responsive.ip(2.7)))
                  ]
                ),
              ],
            ),
          );
    }
}